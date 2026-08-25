with source as (
    select *
    from {{ source('raw', 'MORTGAGE_COMMISSIONS') }}
)

select * rename (
    _file as source_file,
    _line as source_line_number,
    _sheet_name as source_sheet_name,
    _modified as source_modified_at,
    _fivetran_synced as fivetran_synced_at,
    lfg_fee_incl_gst_ as lfg_fee_incl_gst,
    lfg_ as lfg
),
    try_cast(
        replace(regexp_replace(to_varchar(loan_amount), '^[*]', ''), ',', '')
        as number(18, 2)
    ) as loan_amount2
from source

