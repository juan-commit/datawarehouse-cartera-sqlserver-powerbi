/*
Descripción:
    Creación de tablas de staging para recibir datos transformados antes de cargarlos al modelo dimensional.
*/

USE DWCARTERA;
GO

IF OBJECT_ID('STG.DimensionZona', 'U') IS NOT NULL DROP TABLE STG.DimensionZona;
CREATE TABLE STG.DimensionZona (
    Zona VARCHAR(100) NOT NULL
);
GO

IF OBJECT_ID('STG.DimensionVendedor', 'U') IS NOT NULL DROP TABLE STG.DimensionVendedor;
CREATE TABLE STG.DimensionVendedor (
    Ejecutivo_Ventas VARCHAR(100) NOT NULL
);
GO

IF OBJECT_ID('STG.DimensionClientes', 'U') IS NOT NULL DROP TABLE STG.DimensionClientes;
CREATE TABLE STG.DimensionClientes (
    ID_Cliente VARCHAR(20) NOT NULL,
    Nombre_Cliente VARCHAR(150) NULL,
    Zona VARCHAR(100) NULL,
    Ejecutivo_Ventas VARCHAR(100) NULL,
    Ciudad VARCHAR(100) NULL,
    Dias_Plazo INT NULL,
    Latitud DECIMAL(18,8) NULL,
    Longitud DECIMAL(18,8) NULL
);
GO

IF OBJECT_ID('STG.Hechos_Cartera', 'U') IS NOT NULL DROP TABLE STG.Hechos_Cartera;
CREATE TABLE STG.Hechos_Cartera (
    Fecha DATE NOT NULL,
    ID_Cliente VARCHAR(20) NOT NULL,
    Zona VARCHAR(100) NULL,
    Ejecutivo_Ventas VARCHAR(100) NULL,
    ID_Factura VARCHAR(20) NOT NULL,
    Referencia VARCHAR(20) NOT NULL,
    Tipo_Documento VARCHAR(20) NOT NULL,
    Dias_Credito INT NOT NULL,
    Monto DECIMAL(18,2) NULL
);
GO
