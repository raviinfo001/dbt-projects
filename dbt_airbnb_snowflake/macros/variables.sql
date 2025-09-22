{% macro learn_variables() %}
    {% set your_name_jinja="Ravin" %}
    {{ log("Hello, " ~ your_name_jinja, info=True) }}

    {{ log("Hello dbt user " ~ var("your_name ", "No Username is Set!!") ~ "!", info=True) }}
{% endmacro %}

