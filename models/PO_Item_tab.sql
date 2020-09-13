{{ config(materialized = 'table') }}

SELECT T1.EBELN as PO, T1.EBELP as Item, T2.BSART as DocType, T2.BSTYP as DocCatgry, 
       T1.MATNR as Prod, T1.WERKS as Plant, T1.LGORT as StorLoc, T1.MENGE as Qty, T1.MEINS as UoM
FROM `graphic-option-238901.raw_data_staging.SAPEW9__2LIS_02_ITM__6` T1
JOIN `graphic-option-238901.raw_data_staging.SAPEW9__2LIS_02_HDR__6` T2
ON    T1.EBELN = T2.EBELN
WHERE T1.BWVORG = 1
ORDER BY T1.EBELN, T1.EBELP, T1.MATNR, T1.WERKS, T1.LGORT