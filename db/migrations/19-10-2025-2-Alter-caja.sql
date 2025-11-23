ALTER TABLE caja MODIFY fecha DATE NOT NULL;
ALTER TABLE caja ADD UNIQUE KEY uq_caja_fecha (fecha);
