with source as (
    select *
    from {{ source('raw', 'MORTGAGE_COMMISSIONS') }}
)

select *
from source
