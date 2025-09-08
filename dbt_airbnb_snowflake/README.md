# dbt_airbnb_snowflake

This project uses [dbt](https://www.getdbt.com/) to transform and test Airbnb listings data on Snowflake. It includes models for cleansed listings and hosts, with robust data quality checks.

## Project Structure

- **models/**: Contains dbt models, including `dim_listings_cleansed`.
- **schema.yml**: Defines model metadata, column descriptions, and tests.
- **README.md**: Project documentation and usage instructions.

## Key Models

- **dim_listings_cleansed**: Cleaned Airbnb listings data with tests for uniqueness, relationships, accepted values, and positive values.
- **dim_hosts_cleansed**: Hosts data referenced by listings.

## Getting Started

1. Install dbt and configure your Snowflake profile.
2. Run transformations:
   ```
   dbt run
   ```
3. Test data quality:
   ```
   dbt test
   ```

## Data Quality

Column-level tests ensure:
- Uniqueness and non-null values for IDs
- Referential integrity between listings and hosts
- Accepted values for room types
- Positive values for minimum nights

## Resources

- [dbt Documentation](https://docs.getdbt.com/docs/introduction)
- [dbt Discourse](https://discourse.getdbt.com/)
- [dbt Community Slack](https://community.getdbt.com/)
- [dbt Events](https://events.getdbt.com)
- [dbt Blog](https://blog.getdbt.com/)

---
