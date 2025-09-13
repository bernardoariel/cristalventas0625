<?php
require __DIR__.'/vendor/autoload.php';
$pdf = new TCPDF(); $pdf->AddPage();
$pdf->Cell(0,10,'Factura OK',0,1,'C');
$pdf->Output('factura.pdf','I');
