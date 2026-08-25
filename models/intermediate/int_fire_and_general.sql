with staging as (
    select *
    from {{ ref('stg_fire_and_general') }}
)

select *
from staging

