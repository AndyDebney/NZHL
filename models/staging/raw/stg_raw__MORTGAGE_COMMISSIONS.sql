with 

source as (

    select * from {{ source('raw', 'MORTGAGE_COMMISSIONS') }}

),

renamed as (

    select
        _file,
        _line,
        _sheet_name,
        _modified,
        _fivetran_synced,
        net_payable,
        broker,
        licensee_code,
        date,
        bank_commission,
        commissions,
        lender,
        u_t_r_rc_cb_bc,
        lfg_fee_incl_gst_,
        batch,
        loan_plan_writer,
        month_end,
        loan_amount,
        client,
        lfg_

    from source

)

select * from renamed