CREATE TABLE [dbo].[consorcio] (
    [idprovincia] INT           NOT NULL,
    [idlocalidad] INT           NOT NULL,
    [idconsorcio] INT           NOT NULL,
    [nombre]      VARCHAR (50)  NULL,
    [direccion]   VARCHAR (250) NULL,
    [idzona]      INT           NULL,
    [idconserje]  INT           NULL,
    [idadmin]     INT           NULL,
    CONSTRAINT [PK_consorcio] PRIMARY KEY CLUSTERED ([idprovincia] ASC, [idlocalidad] ASC, [idconsorcio] ASC),
    CONSTRAINT [FK_consorcio_admin] FOREIGN KEY ([idadmin]) REFERENCES [dbo].[administrador] ([idadmin]),
    CONSTRAINT [FK_consorcio_conserje] FOREIGN KEY ([idconserje]) REFERENCES [dbo].[conserje] ([idconserje]),
    CONSTRAINT [FK_consorcio_pcia] FOREIGN KEY ([idprovincia], [idlocalidad]) REFERENCES [dbo].[localidad] ([idprovincia], [idlocalidad]),
    CONSTRAINT [FK_consorcio_zona] FOREIGN KEY ([idzona]) REFERENCES [dbo].[zona] ([idzona])
);

