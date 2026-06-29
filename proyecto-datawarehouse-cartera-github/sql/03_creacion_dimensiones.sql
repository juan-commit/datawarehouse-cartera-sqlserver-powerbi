/*
Descripción:
    Creación de dimensiones del modelo estrella.
*/

USE DWCARTERA;
GO

IF OBJECT_ID('DW.DimensionZona', 'U') IS NOT NULL DROP TABLE DW.DimensionZona;
CREATE TABLE DW.DimensionZona (
    Dim_IdkeyZona INT IDENTITY(1,1) PRIMARY KEY,
    Zona VARCHAR(100) NOT NULL
);
GO

IF OBJECT_ID('DW.DimensionVendedor', 'U') IS NOT NULL DROP TABLE DW.DimensionVendedor;
CREATE TABLE DW.DimensionVendedor (
    Dim_IdkeyVendedor INT IDENTITY(1,1) PRIMARY KEY,
    Ejecutivo_Ventas VARCHAR(100) NOT NULL
);
GO

IF OBJECT_ID('DW.DimensionClientes', 'U') IS NOT NULL DROP TABLE DW.DimensionClientes;
CREATE TABLE DW.DimensionClientes (
    Dim_IdkeyCliente INT IDENTITY(1,1) PRIMARY KEY,
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

IF OBJECT_ID('DW.DimFecha', 'U') IS NOT NULL DROP TABLE DW.DimFecha;
CREATE TABLE DW.DimFecha (
    Dim_IdKeyFecha INT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Anio INT NOT NULL,
    Mes INT NOT NULL,
    NombreMes VARCHAR(20) NOT NULL,
    Trimestre INT NOT NULL,
    Dia INT NOT NULL
);
GO
