with financial as (
    select * from {{ ref("_dbt_sugar_financial") }}
)

select * from financial