{{ config(materialized = 'table') }}

SELECT T1.PO, T1.Item, T2.DocType, T2.DocCatgry, 
       T1.Prod, T1.Plant, T1.StorLoc, T1.Qty, T1.UoM
FROM {{ ref('stg_POITM') }} T1
JOIN {{ ref('stg_POHDR') }} T2
ON    T1.PO = T2.PO
ORDER BY T1.PO, T1.Item, T1.Prod, T1.Plant, T1.StorLoc