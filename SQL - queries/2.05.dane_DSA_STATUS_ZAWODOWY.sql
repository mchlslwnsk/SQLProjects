USE [DSA_BIZ02]
GO

DELETE FROM dbo.STATUS_ZAWODOWY;
GO

INSERT INTO dbo.[STATUS_ZAWODOWY](sz_id, sz_nazwa)
SELECT 1,	'na etacie' UNION ALL
SELECT 2,	'pracujący dorywczo' UNION ALL
SELECT 3,	'niepracujący' UNION ALL
SELECT 5,	'rencista' UNION ALL
SELECT 7,	'własna działalność'
GO
