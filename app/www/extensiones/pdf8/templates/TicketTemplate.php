<?php
declare(strict_types=1);

class TicketTemplate {
    private \TCPDF $pdf;
    private array $empresa;
    private array $paper;
    private bool $measuring = false;

    // Formatear números: si es entero, sin decimales; si tiene decimales, con decimales
    private function formatNumber(float $number): string {
        if (floor($number) == $number) {
            return number_format($number, 0);
        } else {
            return number_format($number, 2);
        }
    }

    public function __construct(array $empresa, array $paper=['width'=>80,'height'=>240]){
        $this->empresa = $empresa;
        $this->paper   = $paper;
        $this->pdf = new \TCPDF('P','mm', [$paper['width'],$paper['height']], true, 'UTF-8', false);
        $this->pdf->SetMargins(4,4,4);
        $this->pdf->SetAutoPageBreak(true, 4);
        // NO AddPage acá (se hace en renderAuto)
    }

    /** 2 pasadas: mide y luego dibuja con alto justo */
    public function renderAuto(callable $draw, float $minHeight=90, float $extraBottom=1): void {
        $w = $this->paper['width'];

        // PASADA 1 (medición)
        $this->measuring = true;
        $this->pdf->startTransaction();
        $this->pdf->AddPage('P', [$w, 1000]);        // alto temporal grande
        $draw($this);
        $endY = $this->pdf->GetY();
        $this->pdf->rollbackTransaction(true);
        $this->measuring = false;

        // PASADA 2 (definitivo)
        $h = max($minHeight, $endY + $extraBottom);
        $this->pdf->AddPage('P', [$w, $h]);
        $draw($this);
    }
    // Ítems compactos: "cant - desc - total"
    public function itemsCompact(array $items): float {
        $p = $this->pdf;
        $p->SetFont('courier','',8);
        $total = 0.0;

        foreach ($items as $it) {
            $cant = (float)($it['cant'] ?? 1);
            $desc = mb_strimwidth((string)$it['desc'], 0, 20, '', 'UTF-8'); // descripción más corta
            $imp  = isset($it['total'])
                ? (float)$it['total']
                : $cant * (float)($it['pu'] ?? 0);

            $total += $imp;

            // Ej: " 1 - AGUA 10L           1234.50"
            $line = sprintf("%-4s - %-20s %s",
                $this->formatNumber($cant),
                $desc,
                $this->formatNumber($imp)
            );
            $p->MultiCell(0, 4, $line, 0, 'L'); // línea más baja (4mm)
        }
        $p->Ln(1); // pequeño respiro
        return $total;
    }
    // Tabla de ítems: CANT | Detalle (wrap) | Importe
// Tabla: cant. | Detalle | Importe  (Detalle centrado y misma tipografía)
public function itemsTable(array $items, array $opt = []): float {
    $p = $this->pdf;

    // Config
    $family  = $opt['font'] ?? 'helvetica'; // ← misma tipografía en toda la fila
    $fs      = $opt['fs'] ?? 8;
    $lh      = $opt['lh'] ?? 4.0;
    $descMax = $opt['desc_max_lines'] ?? 2;

    $usable = $this->paper['width'] - 8; // márgenes 4mm c/u
    $wCant  = $opt['w']['cant'] ?? 12;
    $wImp   = $opt['w']['imp']  ?? 18;
    $wDesc  = $opt['w']['desc'] ?? ($usable - $wCant - $wImp);

    // Header
    $p->SetFont($family,'B',$fs);
    $p->MultiCell($wCant +2, $lh, 'Cant.',   0, 'L', false, 0);
    $p->MultiCell($wDesc - 3, $lh, 'Detalle', 0, 'C', false, 0); // ← centrado, más estrecho
    $p->MultiCell($wImp + 3,  $lh, 'Importe', 0, 'L', false, 1);
    $p->Ln(0.5);

    $total = 0.0;

    foreach ($items as $it) {
        $cant = (float)($it['cant'] ?? 1);
        $pu   = (float)($it['pu'] ?? 0);
        $imp  = isset($it['total']) ? (float)$it['total'] : $cant * $pu;
        $desc = trim((string)($it['desc'] ?? 'Ítem'));
        $total += $imp;

        // Alto de fila (máx 2 líneas para la descripción)
        $p->SetFont($family,'',$fs);
        $lines = max(1, min($descMax, $p->getNumLines($desc, $wDesc)));
        $rowH  = $lines * $lh;

        $curX = $p->GetX(); $curY = $p->GetY();

        // cant. (centrado)
        $p->SetXY($curX, $curY);
        $p->MultiCell($wCant, $rowH, $this->formatNumber($cant), 0, 'C', false, 0, '', '', true, 0, false, true, $rowH, 'M');

        // Detalle (centrado, wrap)
        $p->SetXY($curX + $wCant, $curY);
        $p->MultiCell($wDesc - 3, $rowH, $desc, 0, 'C', false, 0, '', '', true, 0, false, true, $rowH, 'M');

        // Importe (centrado)
        $p->SetXY($curX + $wCant + ($wDesc - 3), $curY);
        $p->MultiCell($wImp + 3, $rowH, $this->formatNumber($imp), 0, 'C', false, 1, '', '', true, 0, false, true, $rowH, 'M');

        $p->Ln(0.5);
    }

    $p->Ln(1);
    return $total;
}

// Bloque de firma anclado al pie (líneas: Firma / Aclaración / DNI)
public function signatureLines(array $labels = ['Firma','Aclaración','DNI'], float $fromBottom = 18): void {
    if ($this->measuring) return;                 // no mover en la pasada de medición
    $p = $this->pdf;

    // Anclar cerca del borde inferior
    $this->pushToBottom($fromBottom);

    $usable = $this->paper['width'] - 8;          // ancho útil (márgenes 4mm)
    $cols   = max(1, count($labels));
    $wcol   = $usable / $cols;

    $yLine  = $p->GetY() + 8;                     // altura de las líneas
    $xStart = 4;

    $p->SetFont('helvetica','',8);

    for ($i = 0; $i < $cols; $i++) {
        $x1 = $xStart + $i * $wcol;
        $x2 = $x1 + $wcol - 2;                    // pequeño margen interno

        // línea de firma
        $p->Line($x1, $yLine, $x2, $yLine);

        // etiqueta centrada bajo la línea
        $p->SetXY($x1, $yLine + 1.5);
        $p->Cell($wcol, 4, $labels[$i], 0, 0, 'C');
    }
    // dejar un respiro mínimo
    $p->Ln(6);
}

    // Ítems en 2 líneas: "cant × precio = total" + descripción (máx 2 líneas)
public function itemsTwoLine(array $items): float {
    $p = $this->pdf;
    $total = 0.0;

    foreach ($items as $it) {
        $cant = (float)($it['cant'] ?? 1);
        $pu   = (float)($it['pu'] ?? 0);
        $imp  = isset($it['total']) ? (float)$it['total'] : $cant * $pu;
        $total += $imp;

        // 1) Línea de números
        $p->SetFont('courier','',8);
        $p->MultiCell(0,4, sprintf(
            "%s × %s = %s",
            $this->formatNumber($cant),
            $this->formatNumber($pu),
            $this->formatNumber($imp)
        ), 0, 'R');

        // 2) Descripción (máx 2 líneas)
        $desc = trim((string)($it['desc'] ?? 'Ítem'));
        $desc = preg_replace('/\s+/', ' ', $desc);
        $lines = explode("\n", wordwrap($desc, 28));     // 28 chars aprox por línea en 80mm
        $show  = implode("\n", array_slice($lines, 0, 2));

        $p->SetFont('helvetica','',8);
        $p->MultiCell(0,4, $show, 0, 'L');

        $p->Ln(0.5); // pequeño respiro entre ítems
    }

    $p->Ln(1); // aire antes de totales
    return $total;
}

    // Detalle de pagos (lista cada método: EFECTIVO, TARJETA, etc.)
    public function payBreakdown(array $rows): void {
        $p = $this->pdf;
        $p->SetFont('helvetica','',9);
        foreach ($rows as $r) {
            $label = strtoupper((string)($r['tipo'] ?? $r['label'] ?? 'PAGO'));
            $monto = (float)($r['importe'] ?? $r['monto'] ?? 0);
            $p->Cell(0, 5, sprintf("%-14s $ %s", $label, $this->formatNumber($monto)), 0, 1, 'R');
        }
    }

    public function header(string $titulo, ?string $sub=''): void {
        $p = $this->pdf;
        $p->SetFont('helvetica','B',12);
        $p->Cell(0,6,$this->empresa['nombre'] ?? 'MI EMPRESA',0,1,'C');
        $p->SetFont('helvetica','',8);
        $lineas = [];
        if (!empty($this->empresa['telefono']))  $lineas[] = 'Tel. ' . $this->empresa['telefono'];
        if (!empty($this->empresa['direccion'])) $lineas[] = $this->empresa['direccion'];
        // if (!empty($this->empresa['extra']))     $lineas[] = $this->empresa['extra'];
        if ($lineas) $p->MultiCell(0,4, implode("\n",$lineas), 0, 'C');
        $p->Ln(1);
        $p->SetFont('helvetica','B',10);
        $p->Cell(0,5, strtoupper($titulo), 0,1,'C');
        if ($sub) { $p->SetFont('helvetica','',8); $p->Cell(0,4,$sub,0,1,'C'); }
        $p->Ln(0.3);
    }

    public function items(array $items): float {
        $p=$this->pdf; $p->SetFont('courier','',9); $total=0;
        foreach ($items as $it) {
            $c=(float)($it['cant']??1); $pu=(float)($it['pu']??0); $imp=$c*$pu; $total+=$imp;
            $desc = mb_strimwidth((string)$it['desc'],0,20,'','UTF-8');
            $p->MultiCell(0,5,sprintf("%-20s %s x %s = %s",$desc,$this->formatNumber($c),$this->formatNumber($pu),$this->formatNumber($imp)),0,'L');
        }
        $p->Ln(1);
        return $total;
    }

    public function totals(float $total, ?array $pagos=null): void {
        $p=$this->pdf;
        $p->Ln(1.2);                        // ← NUEVO: margen superior del bloque
        $p->SetFont('helvetica','B',11);
        $p->Cell(0,7,'TOTAL $ '.$this->formatNumber($total),0,1,'R');
        if ($pagos) {
            $p->SetFont('helvetica','',9);
            foreach ($pagos as $k=>$v) {
                $p->Cell(0,5,sprintf("%-14s $ %s",ucfirst($k),$this->formatNumber((float)$v)),0,1,'R');
            }
        }
        $p->Ln(0.5);
    }

    public function info(array $pairs): void {
        $p=$this->pdf; $p->SetFont('helvetica','',8);
        foreach ($pairs as $k=>$v) { $p->MultiCell(0,4,"$k: $v",0,'L'); }
        $p->Ln(1.5);
    }

    public function recepcion(array $rows): void {
        $p=$this->pdf; $p->SetFont('courier','',9);
        foreach ($rows as $r) {
            $d=mb_strimwidth((string)$r['desc'],0,22,'','UTF-8');
            $ped=(float)($r['pedida']??0); $rec=(float)($r['recibida']??0);
            $p->MultiCell(0,5,sprintf("%-22s %5.2f/%5.2f",$d,$rec,$ped),0,'L');
            if (!empty($r['obs'])) { $p->SetFont('helvetica','I',8); $p->MultiCell(0,4,"  Obs: ".$r['obs'],0,'L'); $p->SetFont('courier','',9); }
        }
        $p->Ln(1);
    }

    public function qr(string $data,float $x=null,float $y=null,float $size=22): void {
        $st=['fgcolor'=>[0,0,0],'bgcolor'=>false,'padding'=>1];
        if ($x===null) $x=28; if ($y===null) $y=$this->pdf->GetY()+2;
        $this->pdf->write2DBarcode($data,'QRCODE,M',$x,$y,$size,$size,$st,'N');
        $this->pdf->Ln($size+4);
    }

    public function footer(string $txt="¡Gracias por elegirnos!"): void {
        $this->pdf->SetFont('helvetica','',8);
        $this->pdf->MultiCell(0,4,$txt,0,'C');
    }

    // Línea fina
    public function rule(float $gap=1.0, float $lw=0.2): void {
        $p = $this->pdf;
        $x1 = 4; $x2 = $this->paper['width'] - 4; $y = $p->GetY();
        $p->SetLineWidth($lw);
        $p->Line($x1, $y, $x2, $y);
        $p->Ln($gap);
    }

    // “COMPROBANTE NO FISCAL”
    public function noFiscal(): void {
        $p = $this->pdf;
        $p->SetFont('helvetica','I',8);
        $p->Cell(0,4,'COMPROBANTE NO FISCAL',0,1,'C');
        $this->rule(1.5);
    }

    /** Anclar cursor cerca del pie (solo en pasada de dibujo) */
    public function pushToBottom(float $fromBottom = 8.0): void {
        if ($this->measuring) return;
        $p = $this->pdf;
        $y = $p->getPageHeight() - $fromBottom;
        if ($p->GetY() < $y) $p->SetY($y);
    }

    public function output(string $name='ticket.pdf', string $dest='I'): void {
        $this->pdf->Output($name,$dest);
    }
}
