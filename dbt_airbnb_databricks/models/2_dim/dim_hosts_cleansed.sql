-- Enforcing this model to create a view instead of table. Below scripts overwrite the prj config
{{
    config(
        materialized='view'
    )
}} 
with src_hosts AS 
(
    SELECT * FROM {{ ref('src_hosts') }}
)

SELECT
    HOST_ID, 
    NVL(HOST_NAME,'Anonymous') as HOST_NAME, 
    IS_SUPERHOST, 
    CREATED_AT, 
    UPDATED_AT
FROM
    src_hosts