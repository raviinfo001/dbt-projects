{% macro learn_logging() %} 
  {{ log("This is a log message from the logging macro.", info=True) }}
{% endmacro %}
