# CONSULTAS
USE Bella_Y_Actual_V3;

# TABLA PRODUCTO

## Visualizar todos los productos del inventario
SELECT * FROM producto;

## Selecionar los productos que contienen la medida de mas de 350 mililitros
SELECT * FROM producto WHERE medida_prod >= 350 AND Unidad_Medida_prod = 'Mililitros';

# Mostrar todos los productos donde su porcentaje de ganancia sea menor á 0.11%
SELECT * FROM producto WHERE Porcentaje_Ganancia <= 0.14;

# Mostrar todos los productos que comiencen con el nombre Esmalte
SELECT * FROM producto WHERE Nombre_Prod LIKE 'Esmalte%' LIMIT 0, 1000;

# Mostrar todos los productos que esten en estado 'Desabastecido'
SELECT * FROM producto WHERE Estado = 'Desabastecido';

#_----------------------------------------------------------------------------------------------

# TABLA EMPRESAS_PROVEEDORAS

# Mostrar todas las empresas que existen para proveer
SELECT * FROM EMPRESAS_PROVEEDORAS;

#Mostrar Todos los encargados que con su nombre contenga la letra (o) en orden descendente
SELECT * FROM EMPRESAS_PROVEEDORAS WHERE Encargado_Despacho LIKE '%o%' ORDER BY Id_Empresas_Proveedoras DESC;

#-------------------------------------------------------------------------------------------------
# TABLA Proveedor

# Mostrar todos los proveedores que existen
SELECT * FROM Proveedor;

#Mostrar solamente el nombre del proveedors y para que empresa trabaja
SELECT Nombre_prove, id_Empresas_proveedoras FROM Proveedor;
# ------------------------------------------------------------------------------------------------
# TABLA CLIENTE

# Mostrar todos los clientes en existencia
SELECT * FROM Cliente;

# Mostrar los quientes que como direccion que vivan en una calle y en una avenida
SELECT * FROM Cliente WHERE Direccion NOT LIKE ('Calle%');

SELECT * FROM Cliente WHERE Direccion NOT LIKE '#_[987]';
#-------------------------------------------------------------------------------------------------
# TABLA ROL

#Mostrar todos los roles
SELECT * FROM Rol;
#-------------------------------------------------------------------------------------------------
# TABLA EMPLEADO

# Mostrar todos los empleados
SELECT * FROM Empleado;
#--------------------------------------------------------------------------------------------------
# TABLA DE VENTAS

# Mostrar todas las ventas en total
SELECT * FROM VENTA;

