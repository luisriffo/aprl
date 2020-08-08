-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-08-06 20:16:39 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE accidentes (
    id_reporte             INTEGER NOT NULL,
    fecha_ingreso          DATE NOT NULL,
    fecha_accidente        DATE NOT NULL,
    nombre_accidentado     VARCHAR2(500 CHAR) NOT NULL,
    gravedad_accidente     VARCHAR2(100 CHAR) NOT NULL,
    lugar_accidente        VARCHAR2(100 CHAR) NOT NULL,
    descripcion_accidente  VARCHAR2(300 CHAR) NOT NULL,
    cliente_id_cliente     INTEGER NOT NULL
);

ALTER TABLE accidentes ADD CONSTRAINT accidentes_pk PRIMARY KEY ( id_reporte );

CREATE TABLE actividad (
    id_actividad           INTEGER NOT NULL,
    fecha_ingreso          DATE NOT NULL,
    motivo_actividad       VARCHAR2(100 CHAR) NOT NULL,
    detalle_actividad      VARCHAR2(500 CHAR) NOT NULL,
    observacion_actividad  VARCHAR2(1000 CHAR),
    actividad_realizada    CHAR(1 CHAR) NOT NULL,
    cliente_idcliente      INTEGER NOT NULL
);

ALTER TABLE actividad ADD CONSTRAINT actividad_pk PRIMARY KEY ( id_actividad );

CREATE TABLE asesoria (
    id_asesoria           INTEGER NOT NULL,
    fecha_ingreso_as      DATE NOT NULL,
    tema_asesoria         VARCHAR2(100 CHAR) NOT NULL,
    observacion_asesoria  VARCHAR2(500 CHAR),
    fecha_gestion_as      DATE,
    asesoria_especial     CHAR(1 CHAR) NOT NULL,
    asesoria_realizada    CHAR(1 CHAR),
    cliente_id_cliente    INTEGER NOT NULL
);

ALTER TABLE asesoria ADD CONSTRAINT asesoria_pk PRIMARY KEY ( id_asesoria );

CREATE TABLE capacitacion (
    id_capacitacion           INTEGER NOT NULL,
    fecha_ingreso             DATE NOT NULL,
    fecha_capacitacion        DATE,
    tema_capacitacion         VARCHAR2(200 CHAR),
    capacitacion_extra        CHAR(1 CHAR) NOT NULL,
    capacitacion_realizada    CHAR(1 CHAR),
    observacion_capacitacion  VARCHAR2(500 CHAR),
    cliente_id_cliente        INTEGER NOT NULL
);

ALTER TABLE capacitacion ADD CONSTRAINT capacitacion_pk PRIMARY KEY ( id_capacitacion );

CREATE TABLE checklist (
    id_checklist           INTEGER NOT NULL,
    fecha_creacion         DATE NOT NULL,
    fecha_revision         DATE,
    descripcion_checklist  VARCHAR2(300 CHAR),
    checklist_revisado     CHAR(1 CHAR) NOT NULL,
    cliente_id_cliente     INTEGER NOT NULL
);

ALTER TABLE checklist ADD CONSTRAINT checklist_pk PRIMARY KEY ( id_checklist );

CREATE TABLE cliente (
    id_cliente          INTEGER NOT NULL,
    nombre_cliente      VARCHAR2(100 CHAR) NOT NULL,
    rut_cliente         VARCHAR2(50 CHAR) NOT NULL,
    mail_cliente        VARCHAR2(100 CHAR) NOT NULL,
    telefono_cliente    VARCHAR2(50 CHAR) NOT NULL,
    direccion_cliente   VARCHAR2(300 CHAR) NOT NULL,
    comuna_cliente      VARCHAR2(100 CHAR) NOT NULL,
    ciudad_cliente      VARCHAR2(100 CHAR) NOT NULL,
    rubro_empresa       VARCHAR2(100 CHAR) NOT NULL,
    cliente_al_dia      CHAR(1 CHAR) NOT NULL,
    usuario_id_usuario  INTEGER NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( id_cliente );

CREATE TABLE detalle (
    id_detalle           INTEGER NOT NULL,
    descripcion_factura  VARCHAR2(300 CHAR) NOT NULL,
    precio               FLOAT(12) NOT NULL,
    cantidad             FLOAT(12) NOT NULL,
    factura_id_factura   INTEGER NOT NULL
);

ALTER TABLE detalle ADD CONSTRAINT detalle_pk PRIMARY KEY ( id_detalle );

CREATE TABLE empleado (
    id_empleado         INTEGER NOT NULL,
    nombre_empleado     VARCHAR2(500 CHAR) NOT NULL,
    apellido_empleado   VARCHAR2(500 CHAR) NOT NULL,
    rut_empleado        VARCHAR2(50 CHAR) NOT NULL,
    mail_empleado       VARCHAR2(100 CHAR) NOT NULL,
    telefono_empleado   VARCHAR2(15 CHAR) NOT NULL,
    cargo_empleado      VARCHAR2(100 BYTE) NOT NULL,
    usuario_id_usuario  INTEGER NOT NULL
);

ALTER TABLE empleado ADD CONSTRAINT empleado_pk PRIMARY KEY ( id_empleado );

CREATE TABLE factura (
    id_factura             INTEGER NOT NULL,
    fecha_emision_factura  DATE NOT NULL,
    fecha_vencimiento      DATE NOT NULL,
    iva_factura            NUMBER(2, 2),
    subtotal_factura       FLOAT(12) NOT NULL,
    total_factura          FLOAT(12) NOT NULL,
    cliente_id_cliente     INTEGER NOT NULL
);

ALTER TABLE factura ADD CONSTRAINT factura_pk PRIMARY KEY ( id_factura );

CREATE TABLE preguntas (
    id_pregunta             INTEGER NOT NULL,
    pregunta                VARCHAR2(100 CHAR) NOT NULL,
    respuesta               CHAR(1 CHAR) NOT NULL,
    checklist_id_checklist  INTEGER NOT NULL
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( id_pregunta );

CREATE TABLE solicitudes (
    id_solicitud           INTEGER NOT NULL,
    fecha_ingreso          DATE NOT NULL,
    tema_asesoria          VARCHAR2(1000 CHAR) NOT NULL,
    motivo_solicitud       VARCHAR2(100 CHAR) NOT NULL,
    observacion_solicitud  VARCHAR2(500 CHAR) NOT NULL,
    solicitud_especial     CHAR(1 CHAR) NOT NULL,
    cliente_id_cliente     INTEGER NOT NULL
);

ALTER TABLE solicitudes ADD CONSTRAINT solicitudes_pk PRIMARY KEY ( id_solicitud );

CREATE TABLE usuario (
    id_usuario      INTEGER NOT NULL,
    nombre_usuario  VARCHAR2(100 CHAR) NOT NULL,
    clave_usuario   VARCHAR2(100 CHAR) NOT NULL,
    perfil_usuario  VARCHAR2(100 CHAR) NOT NULL,
    usuario_activo  CHAR(1 CHAR) NOT NULL
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( id_usuario );

CREATE TABLE visitas (
    id_visita             INTEGER NOT NULL,
    fecha_ingreso         DATE NOT NULL,
    fecha_visita          DATE NOT NULL,
    direccion_visita      VARCHAR2(200 CHAR) NOT NULL,
    comuna_visita         VARCHAR2(200 CHAR) NOT NULL,
    visita_realizada      CHAR(1 CHAR),
    motivo_visita         VARCHAR2(200 CHAR) NOT NULL,
    observacion_visita    VARCHAR2(100 CHAR),
    empleado_id_empleado  INTEGER NOT NULL
);

ALTER TABLE visitas ADD CONSTRAINT visitas_pk PRIMARY KEY ( id_visita );

ALTER TABLE accidentes
    ADD CONSTRAINT accidentes_cliente_fk FOREIGN KEY ( cliente_id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE actividad
    ADD CONSTRAINT actividad_cliente_fk FOREIGN KEY ( cliente_idcliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE asesoria
    ADD CONSTRAINT asesoria_cliente_fk FOREIGN KEY ( cliente_id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE capacitacion
    ADD CONSTRAINT capacitacion_cliente_fk FOREIGN KEY ( cliente_id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE checklist
    ADD CONSTRAINT checklist_cliente_fk FOREIGN KEY ( cliente_id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE cliente
    ADD CONSTRAINT cliente_usuario_fkv2 FOREIGN KEY ( usuario_id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE detalle
    ADD CONSTRAINT detalle_factura_fk FOREIGN KEY ( factura_id_factura )
        REFERENCES factura ( id_factura );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_usuario_fkv1 FOREIGN KEY ( usuario_id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE factura
    ADD CONSTRAINT factura_cliente_fk FOREIGN KEY ( cliente_id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_checklist_fk FOREIGN KEY ( checklist_id_checklist )
        REFERENCES checklist ( id_checklist );

ALTER TABLE solicitudes
    ADD CONSTRAINT solicitudes_cliente_fk FOREIGN KEY ( cliente_id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE visitas
    ADD CONSTRAINT visitas_empleado_fkv1 FOREIGN KEY ( empleado_id_empleado )
        REFERENCES empleado ( id_empleado );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                             0
-- ALTER TABLE                             25
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
