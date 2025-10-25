DELIMITER //

DROP TRIGGER IF EXISTS tr_ventas_insert_caja //
CREATE TRIGGER tr_ventas_insert_caja
AFTER INSERT ON ventas
FOR EACH ROW
BEGIN
  DECLARE n INT DEFAULT 0;
  DECLARE i INT DEFAULT 0;
  DECLARE v_tipo VARCHAR(30);
  DECLARE v_importe DECIMAL(10,2);
  DECLARE v_ref TEXT;

  /* Si hay JSON válido en metodo_pago */
  IF NEW.metodo_pago IS NOT NULL AND JSON_VALID(NEW.metodo_pago) THEN
    SET n = JSON_LENGTH(NEW.metodo_pago);

    WHILE i < n DO
      /* tipo del ítem i */
      SET v_tipo = JSON_UNQUOTE(JSON_EXTRACT(NEW.metodo_pago, CONCAT('$[',i,'].tipo')));

      IF UPPER(v_tipo) = 'EFECTIVO' THEN
        /* importe (normaliza coma por punto por si viene "1,50") */
        SET v_importe = CAST(
          REPLACE(JSON_UNQUOTE(JSON_EXTRACT(NEW.metodo_pago, CONCAT('$[',i,'].importe'))), ',', '.')
          AS DECIMAL(10,2)
        );

        /* referencia/comprobante del ítem */
        SET v_ref = JSON_UNQUOTE(JSON_EXTRACT(NEW.metodo_pago, CONCAT('$[',i,'].referencia')));

        INSERT INTO caja_movimientos (fecha, tipo, monto, concepto)
        VALUES (
          NOW(),
          'INGRESO',
          v_importe,
          CONCAT(
            'Ingreso x Venta nro: ', NEW.id,
            CASE WHEN NEW.codigo IS NOT NULL AND NEW.codigo <> '' THEN CONCAT(' - Comprobante: ', NEW.codigo) ELSE '' END,
            CASE WHEN v_ref IS NOT NULL AND v_ref <> '' THEN CONCAT(' - ', v_ref) ELSE '' END
          )
        );
      END IF;

      SET i = i + 1;
    END WHILE;
  END IF;
END //

DELIMITER ;
