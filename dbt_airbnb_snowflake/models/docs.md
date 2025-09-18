#write dbt documentation for cleansed minimum nights
{% docs dim_listing_cleansed_minimum_nights %}
Minimber number of nights required to rent this property

In the data if the min nights are 0 our cleaning logic will update that to 1

{% enddocs %}