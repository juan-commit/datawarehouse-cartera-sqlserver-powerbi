/*
Descripción:
    Vistas de extracción y transformación.
Nota:
    Ajustar nombres de tablas de origen según la base operativa utilizada.
*/

USE DWCARTERA;
GO

/*
Ejemplo de vista de movimientos de cartera.
Este bloque debe adaptarse a los nombres reales de la base operativa.
La lógica recomendada es:
    - Facturas como movimientos positivos.
    - Pagos y notas de crédito como movimientos negativos o abonos.
    - Una fila por línea/movimiento relevante.
*/

-- CREATE OR ALTER VIEW STG.VW_Movimientos_Cartera AS
-- SELECT
--     f.Fecha_Emision AS Fecha,
--     f.ID_Cliente,
--     c.Zona,
--     c.Ejecutivo_Ventas,
--     f.ID_Factura,
--     f.ID_Factura AS Referencia,
--     'FACTURA' AS Tipo_Documento,
--     c.Dias_Plazo AS Dias_Credito,
--     f.Total AS Monto
-- FROM SistemaComercial.dbo.Facturacion f
-- INNER JOIN SistemaComercial.dbo.Maestro_Clientes c
--     ON f.ID_Cliente = c.ID_Cliente;
-- GO
