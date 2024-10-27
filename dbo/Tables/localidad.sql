CREATE TABLE [dbo].[localidad] (
    [idprovincia] INT          NOT NULL,
    [idlocalidad] INT          NOT NULL,
    [descripcion] VARCHAR (50) NULL,
    CONSTRAINT [PK_localidad] PRIMARY KEY CLUSTERED ([idprovincia] ASC, [idlocalidad] ASC),
    CONSTRAINT [FK_localidad_pcia] FOREIGN KEY ([idprovincia]) REFERENCES [dbo].[provincia] ([idprovincia])
);

