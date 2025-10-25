## Registrar un ingreso
```ControladorCajaMovimientos::ctrRegistrarMovimiento("INGRESO", 100, "Venta contado");```

## Registrar un egreso
```ControladorCajaMovimientos::ctrRegistrarMovimiento("EGRESO", 50, "Pago proveedor");```

## Mostrar todos los movimientos
```$movimientos = ControladorCajaMovimientos::ctrMostrarMovimientos();```

## Ver saldo actual
```$saldo = ControladorCajaMovimientos::ctrSaldoActual();```

## Cierre diario
```$cierre = ControladorCajaMovimientos::ctrCierreDiario();```