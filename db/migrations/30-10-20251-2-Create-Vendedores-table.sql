-- Crear tabla vendedores
CREATE TABLE vendedores (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  porcentaje INT(11) DEFAULT NULL,
  observaciones TEXT DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insertar 10 vendedores
INSERT INTO vendedores (nombre, porcentaje, observaciones) VALUES
('Vendedor 1', NULL, NULL),
('Vendedor 2', NULL, NULL),
('Vendedor 3', NULL, NULL),
('Vendedor 4', NULL, NULL),
('Vendedor 5', NULL, NULL),
('Vendedor 6', NULL, NULL),
('Vendedor 7', NULL, NULL),
('Vendedor 8', NULL, NULL),
('Vendedor 9', NULL, NULL),
('Vendedor 10', NULL, NULL);
