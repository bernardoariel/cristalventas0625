DELIMITER //
CREATE TRIGGER tr_caja_au_movimientos
AFTER UPDATE ON caja
FOR EACH ROW
BEGIN
  DECLARE delta DECIMAL(12,2);

  -- calcular diferencia en efectivo
  SET delta = CAST(NEW.efectivo AS DECIMAL(12,2)) - CAST(OLD.efectivo AS DECIMAL(12,2));

  -- si hay diferencia, registrar movimiento
  IF delta <> 0 THEN
    IF delta > 0 THEN
      INSERT INTO caja_movimientos (fecha, tipo, monto, concepto)
      VALUES (NOW(), 'INGRESO', delta, CONCAT('Aumento de caja - Venta'));
    ELSE
      INSERT INTO caja_movimientos (fecha, tipo, monto, concepto)
      VALUES (NOW(), 'EGRESO', ABS(delta), CONCAT('Retiro de caja - Fecha ', NEW.fecha));
    END IF;
  END IF;
END//
DELIMITER ;
