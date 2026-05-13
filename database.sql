CREATE TABLE equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    serial VARCHAR(50) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    marca VARCHAR(100),
    fecha_inspeccion DATE,
    estado ENUM('Conforme', 'Por Vencer', 'Rechazado') DEFAULT 'Conforme',
    cliente_id INT
);

-- Insertar datos de prueba para la entrega de hoy
INSERT INTO equipos (serial, tipo, marca, fecha_inspeccion, estado, cliente_id) VALUES
('ARN-2024-001', 'Arnés 4 Argollas', '3M DBI-SALA', '2026-03-15', 'Conforme', 1),
('ESL-2023-014', 'Eslinga con Absorbedor', 'Insafe', '2026-04-10', 'Por Vencer', 1),
('ANC-2021-005', 'Punto de Anclaje Fijo', 'Huck', '2025-12-01', 'Rechazado', 1);