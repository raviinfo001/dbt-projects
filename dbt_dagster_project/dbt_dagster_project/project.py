from pathlib import Path

from dagster_dbt import DbtProject

dbt_airbnb_snowflake_project = DbtProject(
    project_dir=Path(__file__).joinpath("..", "..", "..", "dbt_airbnb_snowflake").resolve(),
    packaged_project_dir=Path(__file__).joinpath("..", "..", "dbt-project").resolve(),

    profiles_dir="C:/Users/ravin/.dbt" , # Adjust this path as needed
)
dbt_airbnb_snowflake_project.prepare_if_dev()


