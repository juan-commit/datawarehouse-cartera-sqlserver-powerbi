# Data Warehouse para Análisis de Cartera Comercial

Proyecto de análisis de datos orientado al diseño e implementación de un **Data Warehouse de cartera comercial**, usando SQL Server, procesos ETL y visualización en Power BI.

El objetivo del proyecto es transformar datos operativos de facturación, pagos y notas de crédito en un modelo analítico que permita evaluar saldos pendientes, comportamiento de clientes, zonas, vendedores y evolución temporal.

---

## 1. Resumen del proyecto

Este proyecto simula un caso empresarial donde una organización necesita consolidar su información de cartera para responder preguntas como:

- ¿Cuál es el saldo pendiente por cliente?
- ¿Qué zonas concentran mayor cartera?
- ¿Qué vendedores tienen mayor monto asociado?
- ¿Cómo evoluciona la cartera en el tiempo?
- ¿Qué documentos componen los movimientos de cartera?
- ¿Qué facturas mantienen saldos pendientes?

El proyecto incluye una arquitectura de datos con tablas operativas, área de staging, modelo dimensional, tabla de hechos, validaciones y visualización en Power BI.

---

## 2. Herramientas utilizadas

- **SQL Server 2022**
- **SQL Server Management Studio**
- **Visual Studio 2022 / SSIS**
- **Power BI Desktop**
- **Excel**
- **GitHub**

---

## 3. Arquitectura general

```text
Excel / ERP Operativo
        ↓
Base de datos operativa en SQL Server
        ↓
Vistas de extracción y transformación
        ↓
Área STG - Staging
        ↓
Data Warehouse - Modelo dimensional
        ↓
Power BI Dashboard
```

---

## 4. Modelo dimensional

El Data Warehouse se diseñó bajo un modelo tipo estrella.

### Tabla de hechos

| Tabla | Descripción |
|---|---|
| `DW.Hechos_Cartera` | Registra los movimientos de cartera por fecha, cliente, zona, vendedor, factura, referencia, tipo de documento, días de crédito y monto. |

### Dimensiones

| Dimensión | Descripción |
|---|---|
| `DW.DimensionClientes` | Información del cliente. |
| `DW.DimensionZona` | Zona geográfica o comercial asociada al cliente. |
| `DW.DimensionVendedor` | Ejecutivo o vendedor responsable. |
| `DW.DimFecha` | Calendario analítico para evaluar evolución temporal. |

---

## 5. Estructura del repositorio

```text
proyecto-datawarehouse-cartera/
│
├── README.md
├── .gitignore
├── LICENSE
│
├── sql/
│   ├── 01_creacion_base_datos.sql
│   ├── 02_creacion_staging.sql
│   ├── 03_creacion_dimensiones.sql
│   ├── 04_creacion_hechos.sql
│   ├── 05_vistas.sql
│   ├── 06_procedimientos_etl.sql
│   └── 07_validaciones.sql
│
├── powerbi/
│   ├── README.md
│   └── capturas/
│       └── colocar_capturas_aqui.txt
│
├── docs/
│   ├── arquitectura.md
│   ├── diccionario_datos.md
│   └── colocar_diagramas_aqui.txt
│
└── data/
    └── README.md
```

---

## 6. Indicadores sugeridos en Power BI

- Monto total de cartera.
- Saldo pendiente por cliente.
- Cartera por zona.
- Cartera por vendedor.
- Evolución mensual de la cartera.
- Documentos por tipo.
- Facturas con saldo pendiente.
- Ranking de clientes con mayor cartera.

---

## 7. Vista previa del dashboard

> Capturas del dashboard exportadas desde Power BI.


![Dashboard general](https://raw.githubusercontent.com/juan-commit/datawarehouse-cartera-sqlserver-powerbi/main/proyecto-datawarehouse-cartera-github/powerbi/capturas/dashboard-general.png)
![Cartera por zona](https://raw.githubusercontent.com/juan-commit/datawarehouse-cartera-sqlserver-powerbi/main/proyecto-datawarehouse-cartera-github/powerbi/capturas/riesgo-cartera.png)
![Saldos por cliente](https://raw.githubusercontent.com/juan-commit/datawarehouse-cartera-sqlserver-powerbi/main/proyecto-datawarehouse-cartera-github/powerbi/capturas/modelo-relaciones-powerbi.png)

---

## 8. Aprendizajes del proyecto

Durante este proyecto reforcé conocimientos en:

- Diseño de modelos dimensionales.
- Construcción de procesos ETL.
- Uso de áreas staging.
- Creación de vistas y procedimientos almacenados en SQL Server.
- Validación de cargas de datos.
- Relacionamiento de tablas en Power BI.
- Construcción de indicadores para análisis financiero y comercial.
- Documentación técnica de soluciones de inteligencia de negocios.

---

## 9. Estado del proyecto

Proyecto académico convertido en caso de portafolio profesional.

Pendientes recomendados:

- Agregar capturas reales del dashboard.
- Incluir imagen del modelo relacional en Power BI.
- Subir el archivo `.pbix` si no contiene información sensible.
- Agregar una versión anonimizada o sintética de los datos si aplica.
- Publicar una explicación breve del proyecto en LinkedIn.

---

## 10. Autor

**Juan Alberto Guillen Latino**  
Estudiante de Ingeniería de Sistemas  
Interés profesional: Análisis de Datos, Business Intelligence, SQL, ETL y Power BI.
