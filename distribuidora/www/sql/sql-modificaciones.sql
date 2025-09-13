-- Crear tabla productos_presupuesto
CREATE TABLE IF NOT EXISTS `productos_presupuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_presupuesto` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_presupuesto` (`id_presupuesto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `fk_productos_presupuesto_presupuesto` FOREIGN KEY (`id_presupuesto`) REFERENCES `presupuesto` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_productos_presupuesto_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Modificar la tabla presupuesto
ALTER TABLE `presupuesto`
ADD COLUMN `codigo` VARCHAR(20) AFTER `id`,
ADD COLUMN `id_vendedor` INT(11) AFTER `idcliente`,
ADD COLUMN `impuesto` DECIMAL(10,2) AFTER `productos`,
ADD COLUMN `neto` DECIMAL(10,2) AFTER `impuesto`,
ADD COLUMN `metodo_pago` VARCHAR(50) AFTER `total`;

ALTER TABLE `presupuesto`
CHANGE COLUMN `idcliente` `id_cliente` INT(11) NOT NULL;

ALTER TABLE `presupuesto`
DROP COLUMN `nombre`; 