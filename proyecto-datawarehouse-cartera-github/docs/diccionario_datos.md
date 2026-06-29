# Diccionario de Datos

## DW.Hechos_Cartera

| Campo | Tipo | Descripción |
|---|---|---|
| Dim_IdKeyFecha | INT | Llave de la dimensión fecha. |
| Dim_IdkeyCliente | INT | Llave de la dimensión cliente. |
| Dim_IdkeyZona | INT | Llave de la dimensión zona. |
| Dim_IdkeyVendedor | INT | Llave de la dimensión vendedor. |
| ID_Factura | VARCHAR(20) | Identificador de la factura. |
| Referencia | VARCHAR(20) | Referencia del documento. |
| Tipo_Documento | VARCHAR(20) | Tipo de movimiento: factura, pago, nota de crédito, etc. |
| Dias_Credito | INT | Días de crédito asignados. |
| Monto | DECIMAL(18,2) | Monto del movimiento de cartera. |

## DW.DimensionClientes

| Campo | Descripción |
|---|---|
| Dim_IdkeyCliente | Llave sustituta del cliente. |
| ID_Cliente | Identificador operativo del cliente. |
| Nombre_Cliente | Nombre del cliente. |
| Zona | Zona comercial asociada. |
| Ejecutivo_Ventas | Vendedor o ejecutivo asignado. |
| Ciudad | Ciudad del cliente. |
| Dias_Plazo | Plazo de crédito. |
| Latitud | Coordenada geográfica. |
| Longitud | Coordenada geográfica. |

## DW.DimensionZona

| Campo | Descripción |
|---|---|
| Dim_IdkeyZona | Llave sustituta de la zona. |
| Zona | Nombre de la zona. |

## DW.DimensionVendedor

| Campo | Descripción |
|---|---|
| Dim_IdkeyVendedor | Llave sustituta del vendedor. |
| Ejecutivo_Ventas | Nombre del vendedor o ejecutivo. |

## DW.DimFecha

| Campo | Descripción |
|---|---|
| Dim_IdKeyFecha | Llave de fecha. |
| Fecha | Fecha calendario. |
| Anio | Año. |
| Mes | Número de mes. |
| NombreMes | Nombre del mes. |
| Trimestre | Trimestre del año. |
| Dia | Día del mes. |
