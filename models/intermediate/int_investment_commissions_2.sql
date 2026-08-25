with staging as (
    select *
    from {{ ref('stg_investment_commissions_2') }}
)

select *
from staging

