with staging as (
    select *
    from {{ ref('stg_lfg_insurance') }}
)

select *
from staging

