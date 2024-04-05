WITH properties AS (
    SELECT *
    FROM {{ ref('stg_properties') }}
)
SELECT *
FROM properties