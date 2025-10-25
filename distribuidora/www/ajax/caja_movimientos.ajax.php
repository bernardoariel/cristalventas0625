<?php
// ajax/caja_movimientos.ajax.php
// Responde SIEMPRE JSON
header('Content-Type: application/json; charset=utf-8');

try {
  // Cargas (ajustá rutas si tu estructura es distinta)
  require_once "../modelos/caja.modelo.php";
  require_once "../controladores/caja.controlador.php";

  // Solo POST
  if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['ok' => false, 'msg' => 'Método no permitido']); exit;
  }

  // Accion esperada
  $accion = isset($_POST['accion']) ? trim($_POST['accion']) : '';
  if ($accion !== 'registrar') {
    http_response_code(400);
    echo json_encode(['ok' => false, 'msg' => 'Acción inválida']); exit;
  }

  // Inputs
  $tipo     = strtoupper(trim($_POST['tipo'] ?? ''));
  // normalizar número con punto decimal
  $montoStr = str_replace(['.', ','], ['.', '.'], trim($_POST['monto'] ?? ''));
  $monto    = is_numeric($montoStr) ? (float)$montoStr : 0.0;
  $concepto = trim($_POST['concepto'] ?? '');

  // Validaciones básicas
  if (!in_array($tipo, ['INGRESO','EGRESO'], true)) {
    http_response_code(400);
    echo json_encode(['ok' => false, 'msg' => 'Tipo inválido']); exit;
  }
  if (!is_finite($monto) || $monto <= 0) {
    http_response_code(400);
    echo json_encode(['ok' => false, 'msg' => 'Monto inválido']); exit;
  }
  if ($concepto === '') {
    http_response_code(400);
    echo json_encode(['ok' => false, 'msg' => 'Detalle requerido']); exit;
  }
  if (mb_strlen($concepto) > 255) {
    $concepto = mb_substr($concepto, 0, 255);
  }

  // Registrar (usa la validación de saldo en el controlador)
  $r = ControladorCajaMovimientos::ctrRegistrarMovimiento($tipo, $monto, $concepto);

  if ($r === 'ok') {
    echo json_encode(['ok' => true]); exit;
  }

  if ($r === 'saldo_insuficiente') {
    // mensaje claro para el modal
    http_response_code(409); // conflicto
    echo json_encode(['ok' => false, 'msg' => 'Saldo insuficiente en caja.']); exit;
  }

  // Fallback de error genérico
  http_response_code(500);
  echo json_encode(['ok' => false, 'msg' => 'No se pudo guardar el movimiento.']); exit;

} catch (Throwable $e) {
  // Error inesperado controlado en JSON
  http_response_code(500);
  echo json_encode(['ok' => false, 'msg' => 'Error inesperado']); exit;
}
