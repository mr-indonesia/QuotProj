use CLIENT_BASE
GO

SELECT dbo.UFN_LEVENSHTEIN	(
									LTRIM(REPLACE(REPLACE(UPPER('Yayasan Cipta Karya'),'PT',''),'CV','')),
									UPPER('YAYASAN KARINA')
								) * 100 as Result
/*----------------------------------------------------------------------------------------*/
--FUNCTION RETURN DATE
/*----------------------------------------------------------------------------------------*/
SELECT convert(varchar(20),GETDATE(),106) as Result
/*----------------------------------------------------------------------------------------*/