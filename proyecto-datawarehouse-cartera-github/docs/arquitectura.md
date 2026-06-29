# Arquitectura del Proyecto

## Flujo de datos

```text
Excel / ERP Operativo
        ↓
SQL Server - Base operativa
        ↓
Vistas de extracción
        ↓
STG - Staging Area
        ↓
DW - Data Warehouse
        ↓
Power BI
```

## Capas del proyecto

### 1. Fuente operativa

Contiene tablas transaccionales y maestras como clientes, productos, facturación, pagos y notas de crédito.

### 2. Staging

Área intermedia para recibir datos limpios o preparados antes de cargarlos al Data Warehouse.

### 3. Data Warehouse

Modelo dimensional orientado al análisis de cartera comercial.

### 4. Visualización

Dashboard de Power BI para analizar saldos, zonas, vendedores, clientes y evolución temporal.
