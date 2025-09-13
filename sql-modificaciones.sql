-- =============================
-- MODIFICACIONES TABLA productos
-- =============================

-- Permitir nulos en obs (observaciones)
ALTER TABLE productos MODIFY obs TEXT NULL;

-- Permitir nulos en obsdel (observaciones de eliminación)
ALTER TABLE productos MODIFY obsdel TEXT NULL;

-- Poner valor por defecto 0 en ventas
ALTER TABLE productos MODIFY ventas FLOAT DEFAULT 0;

-- Poner valor por defecto 0 en iva
ALTER TABLE productos MODIFY iva FLOAT DEFAULT 0;

-- Poner valor por defecto 1 en activo (si corresponde)
ALTER TABLE productos MODIFY activo INT(11) DEFAULT 1;

-- Poner valor por defecto 0 en precio_compra
ALTER TABLE productos MODIFY precio_compra FLOAT DEFAULT 0;

-- Poner valor por defecto 0 en stock (opcional)
ALTER TABLE productos MODIFY stock FLOAT DEFAULT 0;

-- Poner valor por defecto 0 en cantminima (opcional)
ALTER TABLE productos MODIFY cantminima FLOAT DEFAULT 0;


-- =============================
-- MODIFICACIONES TABLA usuarios
-- =============================

-- Poner valor por defecto 0 en estado
ALTER TABLE usuarios MODIFY estado INT(11) DEFAULT 0;

-- Permitir nulos en ultimo_login
ALTER TABLE usuarios MODIFY ultimo_login DATETIME NULL;

-- Si tienes algún campo tipo TEXT y quieres evitar problemas, permite nulos:
-- (Por ejemplo, si perfil fuera TEXT, aunque lo ideal es que sea VARCHAR)
ALTER TABLE usuarios MODIFY perfil VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Vendedor';


-- =============================
-- MODIFICACIONES TABLA backup
-- =============================

-- Agregar columna 'datos' para backup de categorías
ALTER TABLE backup ADD COLUMN datos TEXT NULL;


-- =============================
-- MODIFICACIONES TABLA clientes
-- =============================

-- Permitir nulos en obs (observaciones)
ALTER TABLE clientes MODIFY obs TEXT NULL;

-- Permitir nulos en obsdel (observaciones de eliminación)
ALTER TABLE clientes MODIFY obsdel TEXT NULL;

-- Permitir nulos en ultima_compra (fecha de última compra)
ALTER TABLE clientes MODIFY ultima_compra DATETIME NULL;

-- Agregar valor por defecto 0 para compras (si no lo agregaste antes)
ALTER TABLE clientes MODIFY compras INT DEFAULT 0;

-- Agregar valor por defecto 1 para activo (si no lo agregaste antes)
ALTER TABLE clientes MODIFY activo INT(11) DEFAULT 1;

-- Agregar valor por defecto 1 para idtipocliente (si no lo agregaste antes)
ALTER TABLE clientes MODIFY idtipocliente INT(11) DEFAULT 1; 

ALTER TABLE `ventas` MODIFY `fechapago` date NOT NULL DEFAULT CURRENT_DATE;


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