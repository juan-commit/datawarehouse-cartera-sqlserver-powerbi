/*
Descripción:
    Procedimientos almacenados para cargar dimensiones y hechos desde STG hacia DW.
*/

USE DWCARTERA;
GO

CREATE OR ALTER PROCEDURE DW.InsertDimensionZona
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO DW.DimensionZona (Zona)
    SELECT DISTINCT s.Zona
    FROM STG.DimensionZona s
    WHERE NOT EXISTS (
        SELECT 1
        FROM DW.DimensionZona d
        WHERE d.Zona = s.Zona
    );
END;
GO

CREATE OR ALTER PROCEDURE DW.InsertDimensionVendedor
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO DW.DimensionVendedor (Ejecutivo_Ventas)
    SELECT DISTINCT s.Ejecutivo_Ventas
    FROM STG.DimensionVendedor s
    WHERE NOT EXISTS (
        SELECT 1
        FROM DW.DimensionVendedor d
        WHERE d.Ejecutivo_Ventas = s.Ejecutivo_Ventas
    );
END;
GO

CREATE OR ALTER PROCEDURE DW.InsertDimensionClientes
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO DW.DimensionClientes (
        ID_Cliente,
        Nombre_Cliente,
        Zona,
        Ejecutivo_Ventas,
        Ciudad,
        Dias_Plazo,
        Latitud,
        Longitud
    )
    SELECT DISTINCT
        s.ID_Cliente,
        s.Nombre_Cliente,
        s.Zona,
        s.Ejecutivo_Ventas,
        s.Ciudad,
        s.Dias_Plazo,
        s.Latitud,
        s.Longitud
    FROM STG.DimensionClientes s
    WHERE NOT EXISTS (
        SELECT 1
        FROM DW.DimensionClientes d
        WHERE d.ID_Cliente = s.ID_Cliente
    );
END;
GO

CREATE OR ALTER PROCEDURE DW.InsertHechosCartera
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO DW.Hechos_Cartera (
        Dim_IdKeyFecha,
        Dim_IdkeyCliente,
        Dim_IdkeyZona,
        Dim_IdkeyVendedor,
        ID_Factura,
        Referencia,
        Tipo_Documento,
        Dias_Credito,
        Monto
    )
    SELECT
        df.Dim_IdKeyFecha,
        dc.Dim_IdkeyCliente,
        dz.Dim_IdkeyZona,
        dv.Dim_IdkeyVendedor,
        s.ID_Factura,
        s.Referencia,
        s.Tipo_Documento,
        s.Dias_Credito,
        s.Monto
    FROM STG.Hechos_Cartera s
    INNER JOIN DW.DimFecha df
        ON df.Fecha = s.Fecha
    INNER JOIN DW.DimensionClientes dc
        ON dc.ID_Cliente = s.ID_Cliente
    LEFT JOIN DW.DimensionZona dz
        ON dz.Zona = s.Zona
    LEFT JOIN DW.DimensionVendedor dv
        ON dv.Ejecutivo_Ventas = s.Ejecutivo_Ventas;
END;
GO
