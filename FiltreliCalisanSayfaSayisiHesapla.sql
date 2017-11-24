USE [KafeYonetim]
GO
/****** Object:  StoredProcedure [dbo].[FiltreliCalisanSayfaSayisiHesapla]    Script Date: 24.11.2017 10:31:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FiltreliCalisanSayfaSayisiHesapla] 
	@SayfadakiOgeSayisi decimal,
	@metin nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CEILING((SELECT COUNT(*) FROM Calisan WHERE Calisan.Isim LIKE '%'+@metin+'%') / @SayfadakiOgeSayisi ) 
END
