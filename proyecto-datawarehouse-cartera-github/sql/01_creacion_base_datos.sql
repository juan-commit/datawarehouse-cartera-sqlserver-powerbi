/*
Proyecto: Data Warehouse para Análisis de Cartera Comercial
Autor: Juan Alberto Guillen Latino
Descripción:
    Script base para crear la base de datos del Data Warehouse.
Nota:
    Ajustar rutas de archivos MDF/LDF según el entorno local.
*/

-- Crear base de datos principal del Data Warehouse
IF DB_ID('DWCARTERA') IS NULL
BEGIN
    CREATE DATABASE DWCARTERA;
END;
GO

USE DWCARTERA;
GO

-- Crear esquemas principales
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'STG')
    EXEC('CREATE SCHEMA STG');
GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'DW')
    EXEC('CREATE SCHEMA DW');
GO
