CREATE TABLE [dbo].[administrador] (
    [idadmin] INT          IDENTITY (1, 1) NOT NULL,
    [apeynom] VARCHAR (50) NULL,
    [viveahi] VARCHAR (1)  DEFAULT ('N') NULL,
    [tel]     VARCHAR (20) NULL,
    [sexo]    VARCHAR (1)  NOT NULL,
    [fechnac] DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([idadmin] ASC),
    CONSTRAINT [CK_habitante_viveahi] CHECK ([viveahi]='N' OR [viveahi]='S'),
    CONSTRAINT [CK_sexo] CHECK ([sexo]='M' OR [sexo]='F')
);

