with 

source as (

    select * from {{ source('raw', 'LFG_INSURANCE') }}

),

renamed as (

    select
        _file,
        _line,
        _sheet_name,
        _modified,
        _fivetran_synced,
        row_classification,
        adviser,
        policy_number,
        date,
        lfg_gst_component_included,
        insurer_name,
        type_i_b_r_ae_tu_l,
        type,
        commission_from_insurer,
        net_commission,
        lfg_commission,
        batch,
        stmt_no,
        broker_code,
        month_end,
        gst_component_included,
        client,
        insurer

    from source

)

select * from renamed