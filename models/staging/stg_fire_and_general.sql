with source as (
    select *
    from {{ source('raw', 'FIRE_AND_GENERAL') }}
)

select * rename (
    _file as source_file,
    _line as source_line_number,
    _sheet_name as source_sheet_name,
    _modified as source_modified_at,
    _fivetran_synced as fivetran_synced_at,
    ar_commission_excl_gst_ as ar_commission_excl_gst,
    gst_on_ar_fee_ as gst_on_ar_fee,
    uw_fee_excl_gst_ as uw_fee_excl_gst,
    nd_commission_excl_gst_ as nd_commission_excl_gst,
    gst_on_uw_fee_ as gst_on_uw_fee,
    broker_fee_excl_gst_ as broker_fee_excl_gst,
    co_commission_excl_gst_ as co_commission_excl_gst,
    co_nd_commission_excl_gst_ as co_nd_commission_excl_gst,
    ar_fee_excl_gst_ as ar_fee_excl_gst
)
from source
