with source as (
    select *
    from {{ source('raw', 'INVESTMENT_COMMISSIONS_2') }}
)

select *
from source
