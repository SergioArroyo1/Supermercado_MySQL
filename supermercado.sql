DROP DATABASE IF EXISTS supermercado;
CREATE DATABASE IF NOT EXISTS supermercado
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;

USE supermercado;


CREATE TABLE productos (
    id          BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre      VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio      DECIMAL(10,2) NOT NULL,
    stock       INT DEFAULT 0,
    categoria   VARCHAR(50),
    
    -- Índices para mejorar rendimiento en búsquedas
    INDEX idx_categoria (categoria),
    INDEX idx_nombre (nombre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


-- PASO 3: Insertar datos de ejemplo


-- Categoría: Lácteos
INSERT INTO productos (nombre, descripcion, precio, stock, categoria) VALUES
('Leche Entera 1L', 'Leche entera de vaca, brick de 1 litro', 1.15, 150, 'Lácteos'),
('Leche Desnatada 1L', 'Leche desnatada de vaca, brick de 1 litro', 1.05, 120, 'Lácteos'),
('Yogur Natural Pack 4', 'Pack de 4 yogures naturales', 1.80, 80, 'Lácteos'),
('Queso Manchego 250g', 'Queso manchego curado, cuña de 250g', 4.50, 45, 'Lácteos'),
('Mantequilla 250g', 'Mantequilla sin sal, tarrina de 250g', 2.35, 60, 'Lácteos');

-- Categoría: Bebidas
INSERT INTO productos (nombre, descripcion, precio, stock, categoria) VALUES
('Agua Mineral 1.5L', 'Agua mineral natural, botella 1.5L', 0.45, 200, 'Bebidas'),
('Coca-Cola 2L', 'Refresco de cola, botella 2L', 2.10, 100, 'Bebidas'),
('Zumo Naranja 1L', 'Zumo de naranja 100% exprimido', 2.25, 75, 'Bebidas'),
('Cerveza Pack 6', 'Pack de 6 cervezas lager 33cl', 4.80, 90, 'Bebidas'),
('Vino Tinto Rioja 75cl', 'Vino tinto crianza D.O. Rioja', 6.95, 40, 'Bebidas');

-- Categoría: Carnes
INSERT INTO productos (nombre, descripcion, precio, stock, categoria) VALUES
('Pechuga Pollo 500g', 'Pechuga de pollo fresca, bandeja 500g', 4.20, 35, 'Carnes'),
('Carne Picada Mixta 400g', 'Mezcla de cerdo y ternera, bandeja 400g', 3.95, 40, 'Carnes'),
('Chuletas Cerdo 600g', 'Chuletas de lomo de cerdo', 5.50, 30, 'Carnes'),
('Filete Ternera 300g', 'Filete de ternera para plancha', 6.80, 25, 'Carnes');

-- Categoría: Frutas y Verduras
INSERT INTO productos (nombre, descripcion, precio, stock, categoria) VALUES
('Manzanas Golden 1kg', 'Manzanas Golden Delicious, bolsa 1kg', 1.95, 60, 'Frutas y Verduras'),
('Plátanos 1kg', 'Plátanos de Canarias', 1.65, 55, 'Frutas y Verduras'),
('Tomates 1kg', 'Tomates para ensalada', 2.20, 70, 'Frutas y Verduras'),
('Lechuga Iceberg', 'Lechuga iceberg unidad', 0.85, 45, 'Frutas y Verduras'),
('Patatas 3kg', 'Patatas para freír o cocer, bolsa 3kg', 2.50, 50, 'Frutas y Verduras');

-- Categoría: Panadería
INSERT INTO productos (nombre, descripcion, precio, stock, categoria) VALUES
('Barra Pan 250g', 'Barra de pan tradicional', 0.65, 100, 'Panadería'),
('Pan Molde Integral', 'Pan de molde integral, 500g', 1.45, 65, 'Panadería'),
('Croissants Pack 4', 'Pack de 4 croissants de mantequilla', 2.10, 40, 'Panadería'),
('Magdalenas Pack 12', 'Pack de 12 magdalenas caseras', 2.80, 35, 'Panadería');

-- Categoría: Conservas
INSERT INTO productos (nombre, descripcion, precio, stock, categoria) VALUES
('Atún en Aceite Pack 3', 'Pack de 3 latas de atún en aceite de oliva', 3.20, 80, 'Conservas'),
('Tomate Frito 400g', 'Tomate frito casero, bote 400g', 1.10, 95, 'Conservas'),
('Garbanzos Cocidos 400g', 'Garbanzos cocidos en conserva', 0.95, 70, 'Conservas'),
('Aceitunas Rellenas 300g', 'Aceitunas rellenas de anchoa', 1.85, 55, 'Conservas');

-- Mostrar todos los productos
SELECT 'Total de productos insertados:' AS Info, COUNT(*) AS Total FROM productos;

-- Mostrar productos por categoría
SELECT categoria, COUNT(*) AS cantidad 
FROM productos 
GROUP BY categoria 
ORDER BY categoria;

-- Mostrar algunos productos de ejemplo
SELECT id, nombre, precio, stock, categoria 
FROM productos 
LIMIT 10;




