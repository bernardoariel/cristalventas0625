DELIMITER //
CREATE TRIGGER tr_gastos_ai_movimiento
AFTER INSERT ON gastos
FOR EACH ROW
BEGIN
  IF NEW.medio_pago = 'EFECTIVO' THEN
    INSERT INTO caja_movimientos (fecha, tipo, monto, concepto)
    VALUES (NOW(), 'EGRESO', NEW.importe, CONCAT('Gasto efectivo: ', NEW.nombre, ' (ID ', NEW.id, ')'));
  END IF;
END//
DELIMITER ;
