{{
  config(
    materialized = 'table',
    )
}}

with source as (
      select * from {{ source('dbt_sugar', 'financial') }}
),
renamed as (
    select
        {{ adapter.quote("Year") }},
        {{ adapter.quote("Industry_aggregation_NZSIOC") }},
        {{ adapter.quote("Industry_code_NZSIOC") }},
        {{ adapter.quote("Industry_name_NZSIOC") }},
        {{ adapter.quote("Units") }},
        {{ adapter.quote("Variable_code") }},
        {{ adapter.quote("Variable_name") }},
        {{ adapter.quote("Variable_category") }},
        {{ adapter.quote("Value") }},
        {{ adapter.quote("Industry_code_ANZSIC06") }}

    from source
)
select * from renamed