/*
Descripción:
    Consultas de validación posteriores a la carga.
*/

USE DWCARTERA;
GO

-- Conteo general de registros por tabla
SELECT 'DW.DimFecha' AS Tabla, COUNT(*) AS Total FROM DW.DimFecha
UNION ALL SELECT 'DW.DimensionZona', COUNT(*) FROM DW.DimensionZona
UNION ALL SELECT 'DW.DimensionVendedor', COUNT(*) FROM DW.DimensionVendedor
UNION ALL SELECT 'DW.DimensionClientes', COUNT(*) FROM DW.DimensionClientes
UNION ALL SELECT 'DW.Hechos_Cartera', COUNT(*) FROM DW.Hechos_Cartera;
GO

-- Validar hechos sin cliente relacionado
SELECT COUNT(*) AS HechosSinCliente
FROM DW.Hechos_Cartera h
LEFT JOIN DW.DimensionClientes c
    ON h.Dim_IdkeyCliente = c.Dim_IdkeyCliente
WHERE c.Dim_IdkeyCliente IS NULL;
GO

-- Validar hechos sin fecha relacionada
SELECT COUNT(*) AS HechosSinFecha
FROM DW.Hechos_Cartera h
LEFT JOIN DW.DimFecha f
    ON h.Dim_IdKeyFecha = f.Dim_IdKeyFecha
WHERE f.Dim_IdKeyFecha IS NULL;
GO

-- Monto total de cartera en hechos
SELECT SUM(Monto) AS MontoTotalCartera
FROM DW.Hechos_Cartera;
GO

-- Cartera por zona
SELECT
    z.Zona,
    SUM(h.Monto) AS Monto
FROM DW.Hechos_Cartera h
LEFT JOIN DW.DimensionZona z
    ON h.Dim_IdkeyZona = z.Dim_IdkeyZona
GROUP BY z.Zona
ORDER BY Monto DESC;
GO
