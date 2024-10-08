-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-10-07 23:48:47 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE culturas CASCADE CONSTRAINTS;

DROP TABLE sensor_nutrientes CASCADE CONSTRAINTS;

DROP TABLE sensor_phs CASCADE CONSTRAINTS;

DROP TABLE sensor_umidades CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE culturas (
    idcultura INTEGER NOT NULL,
    nome      NVARCHAR2(30) NOT NULL
);

ALTER TABLE culturas ADD CONSTRAINT pk_culturas PRIMARY KEY ( idcultura );

ALTER TABLE culturas ADD CONSTRAINT un_culturas_nome UNIQUE ( nome );

CREATE TABLE sensor_nutrientes (
    idsensornutriente INTEGER NOT NULL,
    valorfosforo      NUMBER NOT NULL,
    valorpotassio     NUMBER NOT NULL,
    datamedicao       DATE NOT NULL,
    idcultura         INTEGER NOT NULL
);

ALTER TABLE sensor_nutrientes ADD CONSTRAINT pk_sensor_nutrientes PRIMARY KEY ( idsensornutriente );

CREATE TABLE sensor_phs (
    idsensorph  INTEGER NOT NULL,
    valor       NUMBER NOT NULL,
    datamedicao DATE NOT NULL,
    idcultura   INTEGER NOT NULL
);

ALTER TABLE sensor_phs ADD CONSTRAINT pk_sensor_ph PRIMARY KEY ( idsensorph );

CREATE TABLE sensor_umidades (
    idsensorumidade INTEGER NOT NULL,
    valor           NUMBER NOT NULL,
    datamedicao     DATE NOT NULL,
    idcultura       INTEGER NOT NULL
);

ALTER TABLE sensor_umidades ADD CONSTRAINT pk_sensor_umidade PRIMARY KEY ( idsensorumidade );

ALTER TABLE sensor_nutrientes
    ADD CONSTRAINT fk_sensor_nutrientes_culturas FOREIGN KEY ( idcultura )
        REFERENCES culturas ( idcultura );

ALTER TABLE sensor_phs
    ADD CONSTRAINT fk_sensor_ph_culturas FOREIGN KEY ( idcultura )
        REFERENCES culturas ( idcultura );

ALTER TABLE sensor_umidades
    ADD CONSTRAINT fk_sensor_umidade_culturas FOREIGN KEY ( idcultura )
        REFERENCES culturas ( idcultura );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              8
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
