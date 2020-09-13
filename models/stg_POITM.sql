SELECT EBELN as PO, EBELP as Item, 
       MATNR as Prod, WERKS as Plant, LGORT as StorLoc, MENGE as Qty, MEINS as UoM
FROM `graphic-option-238901.raw_data_staging.SAPEW9__2LIS_02_ITM__6`
WHERE BWVORG = 1
