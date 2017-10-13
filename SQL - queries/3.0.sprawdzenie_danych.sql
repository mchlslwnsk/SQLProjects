/* UPDATE [DSA_AGZ14B1].[dbo].[AKTYWNOŚĆ]
  SET ak_czas_koniec = '2015-03-31 23:59:00.000'
  WHERE ak_czas_koniec >= '2015-04-01';

SELECT *
  FROM [DSA_AG].[dbo].[vAKTYWNOŚĆ] a
  WHERE a.ak_czas_koniec >= '2015-04-01' OR a.ak_czas_start >= '2015-04-01'
  GO
*/
--  UPDATE [DSA_AGZ14B1].[dbo].[AKTYWNOŚĆ]
--  SET ak_czas_koniec = ak_czas_koniec+ 1
--  WHERE ak_czas_start > ak_czas_koniec;
/*
  UPDATE [DSA_AGZ06B1].[dbo].[AKTYWNOŚĆ]
  SET ak_czas_start = ak_czas_koniec
  WHERE ak_czas_start > ak_czas_koniec;

SELECT *
  FROM [DSA_AG].[dbo].[vAKTYWNOŚĆ] a
  WHERE a.ak_czas_start > a.ak_czas_koniec;
  GO
*/
/*  UPDATE [DSA_AGZ13B1].[dbo].[AKTYWNOŚĆ]
  SET ak_czas_koniec = ak_czas_start
  WHERE CAST(CAST(ak_czas_koniec - ak_czas_start AS FLOAT)*24 AS DECIMAL(10,2)) > 20;


SELECT a.*, CAST(CAST(a.ak_czas_koniec - a.ak_czas_start AS FLOAT)*24 AS DECIMAL(10,2))
  FROM [DSA_AG].[dbo].[vAKTYWNOŚĆ] a
  WHERE CAST(CAST(a.ak_czas_koniec - a.ak_czas_start AS FLOAT)*24 AS DECIMAL(10,2)) > 20;
  GO
*/
  --SELECT a.*
  --FROM [DSA_AG].[dbo].[vAKTYWNOŚĆ] a
  --WHERE a.ak_czas_koniec > '2014-04-30'
  --   OR a.ak_czas_start < '2014-03-01';
--GO

-------------- poprawa danych
--select *
--from dsa_ag.dbo.vAKTYWNOŚĆ
--where baza = 'Z01B2'
--and ak_czas_start >= '2014-03-16'
--order by ak_czas_start;
/*
update DSA_AGZ11B2.dbo.AKTYWNOŚĆ
set ak_czas_koniec = ak_czas_start
--select * from DSA_AGZ01B3.dbo.AKTYWNOŚĆ
where ak_czas_start > ak_czas_koniec
   OR CAST(CAST(ak_czas_koniec - ak_czas_start AS FLOAT)*24 AS DECIMAL(10,2)) > 12;
go
*/

/*
UPDATE [DSA_AGZ14B].[dbo].[WYDATEK]
SET wy_czas = wy_czas - 31
WHERE wy_czas > '2015-10-31';


SELECT *
  FROM [DSA_AG].[dbo].[vWYDATEK]
WHERE wy_czas > '2015-10-31';


UPDATE [DSA_AGZ01B1].[dbo].[PRZYCHÓD]
SET pr_data = pr_data - 31
WHERE pr_data > '2015-10-31';


SELECT *
  FROM [DSA_AG].[dbo].[vPRZYCHÓD]
WHERE pr_data > '2015-10-31';

*/