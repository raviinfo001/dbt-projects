{{
    config(
        materialized='incremental',
        on_schema_change='fail'
    )
}}

WITH src_reviews AS (
    SELECT * FROM {{ ref('src_reviews') }}
)

SELECT 
{{dbt_utils.generate_surrogate_key(['listing_id','review_date','reviewer_name'])}} as review_id,
* 

FROM src_reviews
WHERE review_text is not null 

-- Tell sql to select the incremental data
{% if is_incremental() %}
    AND review_date> (SELECT max(review_date) from {{this}})
{% endif %}

