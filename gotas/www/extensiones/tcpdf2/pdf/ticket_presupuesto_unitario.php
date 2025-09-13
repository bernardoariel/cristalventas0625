<?php
ob_start();
error_reporting(E_ALL & ~E_DEPRECATED & ~E_WARNING);
define('K_TCPDF_EXTERNAL_CONFIG', true);
require_once("../../tcpdf/tcpdf.php");

require_once "../../../controladores/presupuesto.controlador.php";
require_once "../../../modelos/presupuesto.modelo.php";
require_once "../../../controladores/clientes.controlador.php";
require_once "../../../modelos/clientes.modelo.php";
require_once "../../../controladores/usuarios.controlador.php";
require_once "../../../modelos/usuarios.modelo.php";
require_once "../../../controladores/empresa.controlador.php";
require_once "../../../modelos/empresa.modelo.php";

class imprimirPresupuestoUnitario{
  
  public $item;
  
  public function traerImpresionPresupuestoUnitario(){
  
    //TRAEMOS LA INFORMACIÓN DEL PRESUPUESTO
    $itemPresupuesto = "id";
    $valorPresupuesto = $this->item;
    
    $respuestaPresupuesto = ControladorPresupuesto::ctrMostrarPresupuestos($itemPresupuesto, $valorPresupuesto);
    
    //TRAEMOS LA INFORMACIÓN DEL CLIENTE
    $itemCliente = "id";
    $valorCliente = $respuestaPresupuesto["id_cliente"];
    
    $cliente = ControladorClientes::ctrMostrarClientes($itemCliente, $valorCliente);
    
    //TRAEMOS LA INFORMACIÓN DEL VENDEDOR
    $itemVendedor = "id";
    $valorVendedor = $respuestaPresupuesto["id_vendedor"];
    
    $vendedor = ControladorUsuarios::ctrMostrarUsuarios($itemVendedor, $valorVendedor);
    
    //TRAEMOS LA INFORMACIÓN DE LA EMPRESA
    $itemEmpresa = "id";
    $valorEmpresa = 1;
    
    $empresa = ControladorEmpresa::ctrMostrarEmpresa($itemEmpresa, $valorEmpresa);
    
    //TRAEMOS LA INFORMACIÓN DE LOS PRODUCTOS
    $itemProductos = "id_presupuesto";
    $valorProductos = $respuestaPresupuesto["id"];
    
    $productos = ControladorPresupuesto::ctrMostrarProductosPresupuesto($itemProductos, $valorProductos);
    
    //REQUERIMOS LA CLASE TCPDF
    require_once('../../tcpdf/tcpdf.php');
    require_once('config/tcpdf_config_alt.php');
    
    $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
    
    $pdf->setPageFormat(PDF_PAGE_FORMAT, PDF_PAGE_ORIENTATION);
    
    $pdf->SetPrintHeader(false);
    $pdf->SetPrintFooter(false);
    
    $pdf->AddPage();
    
    // ---------------------------------------------------------
    
    $bloque1 = <<<EOF
    
    <table>
        
        <tr>
            
            <td style="width:150px"><img src="../../../$empresa[fotorecibo]"></td>
            
            <td style="background-color:white; width:140px">
                
                <div style="font-size:8.5px; text-align:right; line-height:15px;">
                    
                    <br>
                    $empresa[nombre]
                    
                    <br>
                    $empresa[cuit]
                    
                    <br>
                    $empresa[direccion]
                    
                    <br>
                    Teléfono: $empresa[telefono]
                    
                    <br>
                    $empresa[email]
                    
                </div>
                
            </td>
            
            <td style="background-color:white; width:140px">
                
                <div style="font-size:8.5px; text-align:right; line-height:15px;">
                    
                    <br>
                    PRESUPUESTO N°: $respuestaPresupuesto[codigo]
                    
                    <br>
                    FECHA: $respuestaPresupuesto[fecha]
                    
                </div>
                
            </td>
            
        </tr>
        
    </table>
    
    EOF;
    
    $pdf->writeHTML($bloque1, false, false, false, false, '');
    
    // ---------------------------------------------------------
    
    $bloque2 = <<<EOF
    
    <table>
        
        <tr>
            
            <td style="width:540px"><img src="../../../extensiones/tcpdf2/pdf/images/back.jpg"></td>
            
        </tr>
        
    </table>
    
    <table style="font-size:10px; padding:5px 10px;">
        
        <tr>
            
            <td style="border: 1px solid #666; background-color:white; width:390px">
                
                Cliente: $cliente[nombre]
                
            </td>
            
            <td style="border: 1px solid #666; background-color:white; width:150px; text-align:right">
                
                $cliente[documento]
                
            </td>
            
        </tr>
        
    </table>
    
    EOF;
    
    $pdf->writeHTML($bloque2, false, false, false, false, '');
    
    // ---------------------------------------------------------
    
    $bloque3 = <<<EOF
    
    <table style="font-size:10px; padding:5px 10px;">
        
        <tr>
            
            <td style="border-bottom: 1px solid #666; background-color:white; width:260px; text-align:center">PRODUCTO</td>
            <td style="border-bottom: 1px solid #666; background-color:white; width:80px; text-align:center">CANTIDAD</td>
            <td style="border-bottom: 1px solid #666; background-color:white; width:100px; text-align:center">PRECIO</td>
            <td style="border-bottom: 1px solid #666; background-color:white; width:100px; text-align:center">TOTAL</td>
            
        </tr>
        
    </table>
    
    EOF;
    
    $pdf->writeHTML($bloque3, false, false, false, false, '');
    
    // ---------------------------------------------------------
    
    foreach ($productos as $key => $item) {
        
        $itemProducto = "id";
        $valorProducto = $item["id_producto"];
        
        $producto = ControladorProductos::ctrMostrarProductos($itemProducto, $valorProducto);
        
        $precioUnitario = number_format($item["precio"], 2);
        $precioTotal = number_format($item["total"], 2);
        
        $bloque4 = <<<EOF
        
        <table style="font-size:10px; padding:5px 10px;">
            
            <tr>
                
                <td style="border-bottom: 1px solid #666; background-color:white; width:260px">$producto[descripcion]</td>
                <td style="border-bottom: 1px solid #666; background-color:white; width:80px; text-align:center">$item[cantidad]</td>
                <td style="border-bottom: 1px solid #666; background-color:white; width:100px; text-align:right">$ $precioUnitario</td>
                <td style="border-bottom: 1px solid #666; background-color:white; width:100px; text-align:right">$ $precioTotal</td>
                
            </tr>
            
        </table>
        
        EOF;
        
        $pdf->writeHTML($bloque4, false, false, false, false, '');
        
    }
    
    // ---------------------------------------------------------
    
    $bloque5 = <<<EOF
    
    <table style="font-size:10px; padding:5px 10px;">
        
        <tr>
            
            <td style="color:#333; background-color:white; width:340px; text-align:right">
                
                NETO:
                
            </td>
            
            <td style="background-color:white; width:100px; text-align:right; font-weight:bold">
                
                $ $respuestaPresupuesto[neto]
                
            </td>
            
        </tr>
        
        <tr>
            
            <td style="color:#333; background-color:white; width:340px; text-align:right">
                
                IMPUESTO:
                
            </td>
            
            <td style="background-color:white; width:100px; text-align:right; font-weight:bold">
                
                $ $respuestaPresupuesto[impuesto]
                
            </td>
            
        </tr>
        
        <tr>
            
            <td style="color:#333; background-color:white; width:340px; text-align:right">
                
                TOTAL:
                
            </td>
            
            <td style="background-color:white; width:100px; text-align:right; font-weight:bold">
                
                $ $respuestaPresupuesto[total]
                
            </td>
            
        </tr>
        
    </table>
    
    EOF;
    
    $pdf->writeHTML($bloque5, false, false, false, false, '');
    
    // ---------------------------------------------------------
    
    $bloque6 = <<<EOF
    
    <table>
        
        <tr>
            
            <td style="width:540px"><img src="../../../extensiones/tcpdf2/pdf/images/back.jpg"></td>
            
        </tr>
        
    </table>
    
    EOF;
    
    $pdf->writeHTML($bloque6, false, false, false, false, '');
    
    // ---------------------------------------------------------
    
    $bloque7 = <<<EOF
    
    <table style="font-size:10px; padding:5px 10px;">
        
        <tr>
            
            <td style="width:540px; text-align:center">
                
                PRESUPUESTO VÁLIDO POR 30 DÍAS
                
            </td>
            
        </tr>
        
    </table>
    
    EOF;
    
    $pdf->writeHTML($bloque7, false, false, false, false, '');
    
    // ---------------------------------------------------------
    
    //SALIDA DEL ARCHIVO 
    ob_end_clean();
    $pdf->Output('presupuesto.pdf');
    
  }
  
}

$presupuesto = new imprimirPresupuestoUnitario();
$presupuesto -> item = $_GET["item"];
$presupuesto -> traerImpresionPresupuestoUnitario();

?>