-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-06-30 14:52:36.922

-- tables
-- Table: Abonador
create database guardería
use guardería

CREATE TABLE Abonador (
    Codigo varchar(4)  NOT NULL,
    Nombre varchar(50)  NOT NULL,
    Direccion varchar(50)  NOT NULL,
    Telefono int  NOT NULL,
    NroCuenta int  NOT NULL,
    CONSTRAINT Abonador_pk PRIMARY KEY  (Codigo)
);

-- Table: Asistencia
CREATE TABLE Asistencia (
    Codigo int  NOT NULL IDENTITY(1, 1),
    Fecha date  NOT NULL,
    Niño_Matricula varchar(4)  NOT NULL,
    AsisteNiño varchar(2)  NOT NULL,
    Abonador_Codigo varchar(4)  NOT NULL,
    Menús_codigo varchar(4)  NOT NULL,
    Ingredientes_Codigo varchar(4)  NOT NULL,
    TotalPagar int  NOT NULL,
    CONSTRAINT Asistencia_pk PRIMARY KEY  (Codigo)
);

-- Table: Familiar
CREATE TABLE Familiar (
    Codigo varchar(4)  NOT NULL,
    DNI int  NOT NULL,
    Nombre varchar(50)  NOT NULL,
    Direccion varchar(50)  NOT NULL,
    Contactos varchar(50)  NOT NULL,
    CONSTRAINT Familiar_pk PRIMARY KEY  (Codigo)
);

-- Table: Ingredientes
CREATE TABLE Ingredientes (
    Codigo varchar(4)  NOT NULL,
    Nombres varchar(50)  NOT NULL,
    Precio int  NOT NULL,
    CONSTRAINT Ingredientes_pk PRIMARY KEY  (Codigo)
);

-- Table: Menús
CREATE TABLE Menús (
    codigo varchar(4)  NOT NULL,
    Platos_Codigo varchar(4)  NOT NULL,
    Precio int  NOT NULL,
    CONSTRAINT Menús_pk PRIMARY KEY  (codigo)
);

-- Table: Niño
CREATE TABLE Niño (
    Matricula varchar(4)  NOT NULL,
    Mombre varchar(50)  NOT NULL,
    FechaNaci date  NOT NULL,
    FechaIngre date  NOT NULL,
    FechaBaja date  NOT NULL,
    Familiar_Codigo varchar(4)  NOT NULL,
    CONSTRAINT Niño_pk PRIMARY KEY  (Matricula)
);

-- Table: Platos
CREATE TABLE Platos (
    Codigo varchar(4)  NOT NULL,
    Nombre varchar(50)  NOT NULL,
    Ingredientes_Codigo varchar(4)  NOT NULL,
    CONSTRAINT Platos_pk PRIMARY KEY  (Codigo)
);

-- foreign keys
-- Reference: Asistencia_Abonador (table: Asistencia)
ALTER TABLE Asistencia ADD CONSTRAINT Asistencia_Abonador
    FOREIGN KEY (Abonador_Codigo)
    REFERENCES Abonador (Codigo);

-- Reference: Asistencia_Ingredientes (table: Asistencia)
ALTER TABLE Asistencia ADD CONSTRAINT Asistencia_Ingredientes
    FOREIGN KEY (Ingredientes_Codigo)
    REFERENCES Ingredientes (Codigo);

-- Reference: Asistencia_Menús (table: Asistencia)
ALTER TABLE Asistencia ADD CONSTRAINT Asistencia_Menús
    FOREIGN KEY (Menús_codigo)
    REFERENCES Menús (codigo);

-- Reference: Asistencia_Niño (table: Asistencia)
ALTER TABLE Asistencia ADD CONSTRAINT Asistencia_Niño
    FOREIGN KEY (Niño_Matricula)
    REFERENCES Niño (Matricula);

-- Reference: Menús_Platos (table: Menús)
ALTER TABLE Menús ADD CONSTRAINT Menús_Platos
    FOREIGN KEY (Platos_Codigo)
    REFERENCES Platos (Codigo);

-- Reference: Niño_Familiar (table: Niño)
ALTER TABLE Niño ADD CONSTRAINT Niño_Familiar
    FOREIGN KEY (Familiar_Codigo)
    REFERENCES Familiar (Codigo);

-- Reference: Platos_Ingredientes (table: Platos)
ALTER TABLE Platos ADD CONSTRAINT Platos_Ingredientes
    FOREIGN KEY (Ingredientes_Codigo)
    REFERENCES Ingredientes (Codigo);

-- End of file.

