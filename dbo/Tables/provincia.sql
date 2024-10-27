CREATE TABLE [dbo].[provincia] (
    [idprovincia] INT          NOT NULL,
    [descripcion] VARCHAR (50) NULL,
    [km2]         INT          NULL,
    [cantdptos]   INT          NULL,
    [poblacion]   INT          NULL,
    [nomcabe]     VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([idprovincia] ASC)
);

