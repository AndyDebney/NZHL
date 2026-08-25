with staging as (
    select *
    from {{ ref('stg_investment_commissions_1') }}
)

select *
from staging

