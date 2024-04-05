WITH properties AS (
  SELECT DISTINCT
    im.field1 AS DISTRICT_CODE,
    im.field2 AS SECTOR_CODE,
    im.field3 AS BLOCK_CODE,
    im.field4 AS LOT_NUMBER,
    im.field5 AS UNIT
  FROM {{ source('taxes', 'properties') }} AS im
  WHERE
    NOT im.field1 IS NULL
)
SELECT *
FROM properties