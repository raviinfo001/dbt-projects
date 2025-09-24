{{
    config(
        materialized='view'
    )
}}

WITH src_listings AS (
    SELECT * FROM {{ ref('src_listings') }}
)

SELECT 
    LISTING_ID,
    LISTING_NAME,
    ROOM_TYPE, 
    CASE 
        WHEN MINIMUM_NIGHTS=0 THEN 1
        ELSE MINIMUM_NIGHTS
    END AS MINIMUM_NIGHTS, 
    HOST_ID, 
    --CAST(CAST(REPLACE(PRICE_STR, '$') AS DECIMAL(10,2)) AS INTEGER) AS PRICE,
    --TRY_CAST(CAST(REPLACE(PRICE_STR, '$') AS DECIMAL(10,2)) AS INT) AS PRICE,
     CAST(
        CAST(
            REPLACE(PRICE_STR, '$')
            AS DOUBLE
        )
        AS INT
    ) AS PRICE,

    CREATED_AT,
    UPDATED_AT
FROM
    src_listings