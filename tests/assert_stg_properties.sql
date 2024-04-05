WITH properties AS (
    SELECT *
    FROM {{ ref('stg_properties') }}
),
aggregated AS (
    SELECT
      COUNT(*) AS total_records
    FROM properties
)
SELECT *
FROM aggregated
WHERE total_records = 0