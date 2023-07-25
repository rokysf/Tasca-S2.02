SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre, CONCAT(precio, "€"), CONCAT(precio, "$") FROM producto;
SELECT nombre AS nombre_de_producto, CONCAT(precio, "€") AS Euros, CONCAT(precio, "$") AS Dolares FROM producto;
SELECT UPPER(nombre), precio FROM producto;
SELECT LOWER(nombre), precio FROM producto;
SELECT nombre, UPPER(LEFT(nombre,2)) FROM fabricante;
SELECT nombre, ROUND(precio) FROM producto;
SELECT nombre, TRUNCATE(precio,0) FROM producto;
SELECT codigo_fabricante FROM producto;
SELECT DISTINCT codigo_fabricante FROM producto;
SELECT nombre FROM fabricante ORDER BY nombre ASC;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante WHERE codigo>=4 LIMIT 2;
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
SELECT nombre FROM producto WHERE codigo_fabricante = 2;
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo ORDER BY fabricante.nombre ASC;
SELECT producto.codigo, producto.nombre, producto.codigo_fabricante, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo ORDER BY producto.precio ASC LIMIT 1;
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo ORDER BY producto.precio DESC LIMIT 1;
SELECT producto.nombre, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo && fabricante.nombre = "lenovo";
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo && fabricante.nombre = "crucial" && producto.precio > 200;
SELECT producto.nombre, fabricante.nombre FROM producto, fabricante WHERE (producto.codigo_fabricante = fabricante.codigo && fabricante.nombre = "Asus") || (producto.codigo_fabricante = fabricante.codigo && fabricante.nombre = "Hewlett-Packard") || (producto.codigo_fabricante = fabricante.codigo && fabricante.nombre = "Seagate");
SELECT producto.nombre, fabricante.nombre FROM producto, fabricante WHERE (producto.codigo_fabricante = fabricante.codigo && fabricante.nombre IN ("Asus", "Hewlett-Packard", "Seagate"));
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo && RIGHT(fabricante.nombre,1) = "e";
SELECT producto.nombre, producto.precio, fabricante.nombre FROM producto, fabricante WHERE producto.codigo_fabricante = fabricante.codigo && fabricante.nombre LIKE('%w%');



