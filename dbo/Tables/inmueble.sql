CREATE TABLE [dbo].[inmueble] (
    [idinmueble]   INT            NOT NULL,
    [nro_piso]     INT            NULL,
    [dpto]         VARCHAR (1)    NULL,
    [sup_Cubierta] DECIMAL (6, 2) NULL,
    [frente]       BIT            NULL,
    [balcon]       BIT            NULL,
    [idprovincia]  INT            NULL,
    [idlocalidad]  INT            NULL,
    [idconsorcio]  INT            NULL,
    CONSTRAINT [PK_inmueble] PRIMARY KEY CLUSTERED ([idinmueble] ASC),
    CONSTRAINT [FK_inmueble_consorcio] FOREIGN KEY ([idprovincia], [idlocalidad], [idconsorcio]) REFERENCES [dbo].[consorcio] ([idprovincia], [idlocalidad], [idconsorcio])
);

