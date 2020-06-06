# Practica5

# IMAGENES 

INGRESAR NUEVO PRODUCTO

![re0](https://user-images.githubusercontent.com/66339650/83953322-396d7900-a805-11ea-8b27-552e9fdd172b.jpg)


PRODUCTO REGISTRADO


![re1](https://user-images.githubusercontent.com/66339650/83953346-6de13500-a805-11ea-90e3-9535e919b3de.jpg)

EDITAR 

![re2](https://user-images.githubusercontent.com/66339650/83953353-75a0d980-a805-11ea-8fbf-e2afb0ac54d8.jpg)

PRODUCTO EDITADO

![RED5](https://user-images.githubusercontent.com/66339650/83953558-bb11d680-a806-11ea-8f1b-490cde052965.jpg)

ELIMINAR 

![re3](https://user-images.githubusercontent.com/66339650/83953357-7df91480-a805-11ea-88d4-ba4a1312789f.jpg)

PRODUCTOS ELIMINADOS


![re4](https://user-images.githubusercontent.com/66339650/83953358-818c9b80-a805-11ea-9742-739230c5f93b.jpg)



# BASE DE DATOS



--
-- Base de datos: `bd_almacen`
--


CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `productos` (`id`, `descripcion`, `stock`) VALUES
(1, 'television ', 40),
(2, 'radio*', 10),
(3, 'tv 32', 12),
(4, 'refrigerador', 22),
(5, 'camarao o4', 60);


ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);


