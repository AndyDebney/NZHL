with source as (
    select *
    from {{ source('raw', 'INVESTMENT_COMMISSIONS_1') }}
)

select *
from source
