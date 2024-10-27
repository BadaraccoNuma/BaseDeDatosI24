CREATE TABLE [dbo].[gasto] (
    [idgasto]     INT            IDENTITY (1, 1) NOT NULL,
    [idprovincia] INT            NULL,
    [idlocalidad] INT            NULL,
    [idconsorcio] INT            NULL,
    [periodo]     INT            NULL,
    [fechapago]   DATETIME       NULL,
    [idtipogasto] INT            NULL,
    [importe]     DECIMAL (8, 2) NULL,
    CONSTRAINT [PK_gasto] PRIMARY KEY CLUSTERED ([idgasto] ASC),
    CONSTRAINT [FK_gasto_consorcio] FOREIGN KEY ([idprovincia], [idlocalidad], [idconsorcio]) REFERENCES [dbo].[consorcio] ([idprovincia], [idlocalidad], [idconsorcio]),
    CONSTRAINT [FK_gasto_tipo] FOREIGN KEY ([idtipogasto]) REFERENCES [dbo].[tipogasto] ([idtipogasto])
);

