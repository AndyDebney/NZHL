with source as (
    select *
    from {{ source('raw', 'FIRE_AND_GENERAL') }}
)

select *
from source
