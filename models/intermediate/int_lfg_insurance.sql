with source as (
    select *
    from {{ source('raw', 'LFG_INSURANCE') }}
)

select *
from source
