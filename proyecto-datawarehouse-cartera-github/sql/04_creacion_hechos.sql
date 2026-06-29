/*
Descripción:
    Creación de la tabla de hechos de cartera.
*/

USE DWCARTERA;
GO

IF OBJECT_ID('DW.Hechos_Cartera', 'U') IS NOT NULL DROP TABLE DW.Hechos_Cartera;
CREATE TABLE DW.Hechos_Cartera (
    Dim_IdKeyFecha INT NOT NULL,
    Dim_IdkeyCliente INT NOT NULL,
    Dim_IdkeyZona INT NULL,
    Dim_IdkeyVendedor INT NULL,
    ID_Factura VARCHAR(20) NOT NULL,
    Referencia VARCHAR(20) NOT NULL,
    Tipo_Documento VARCHAR(20) NOT NULL,
    Dias_Credito INT NOT NULL,
    Monto DECIMAL(18,2) NULL
);
GO

-- Relaciones sugeridas
ALTER TABLE DW.Hechos_Cartera
ADD CONSTRAINT FK_Hechos_Cartera_DimFecha
FOREIGN KEY (Dim_IdKeyFecha) REFERENCES DW.DimFecha(Dim_IdKeyFecha);
GO

ALTER TABLE DW.Hechos_Cartera
ADD CONSTRAINT FK_Hechos_Cartera_DimClientes
FOREIGN KEY (Dim_IdkeyCliente) REFERENCES DW.DimensionClientes(Dim_IdkeyCliente);
GO

ALTER TABLE DW.Hechos_Cartera
ADD CONSTRAINT FK_Hechos_Cartera_DimZona
FOREIGN KEY (Dim_IdkeyZona) REFERENCES DW.DimensionZona(Dim_IdkeyZona);
GO

ALTER TABLE DW.Hechos_Cartera
ADD CONSTRAINT FK_Hechos_Cartera_DimVendedor
FOREIGN KEY (Dim_IdkeyVendedor) REFERENCES DW.DimensionVendedor(Dim_IdkeyVendedor);
GO
