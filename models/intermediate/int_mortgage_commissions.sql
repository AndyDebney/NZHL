with staging as (
    select *
    from {{ ref('stg_mortgage_commissions') }}
)

select *
from staging

