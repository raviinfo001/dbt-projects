{{
    config(
        materialized='incremental',
        on_schema_change='fail'
    )
}}

WITH src_reviews AS (
    SELECT * FROM {{ ref('src_reviews') }}
)

SELECT * FROM src_reviews
WHERE review_text is not null 

-- Tell sql to select the incremental data
{% if is_incremental() %}
    AND review_date> (SELECT max(review_date) from {{this}})
{% endif %}

