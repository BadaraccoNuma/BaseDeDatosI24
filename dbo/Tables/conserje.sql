CREATE TABLE [dbo].[conserje] (
    [idconserje] INT          IDENTITY (1, 1) NOT NULL,
    [apeynom]    VARCHAR (50) NULL,
    [tel]        VARCHAR (20) NULL,
    [fechnac]    DATETIME     NULL,
    [estciv]     VARCHAR (1)  DEFAULT ('S') NULL,
    PRIMARY KEY CLUSTERED ([idconserje] ASC),
    CONSTRAINT [CK_estadocivil] CHECK ([estciv]='O' OR [estciv]='D' OR [estciv]='C' OR [estciv]='S')
);

