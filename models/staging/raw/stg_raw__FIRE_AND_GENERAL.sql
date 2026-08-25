with 

source as (

    select * from {{ source('raw', 'FIRE_AND_GENERAL') }}

),

renamed as (

    select
        _file,
        _line,
        _sheet_name,
        _modified,
        _fivetran_synced,
        class_of_risk,
        client_id,
        gst_on_co_nd_commission,
        policy_standard_industry_code,
        ar_commission_excl_gst_,
        client_name,
        policy_number,
        gst_on_ar_fee_,
        sales_team,
        invoice_total,
        uw_fee_excl_gst_,
        service_team,
        invoice_number,
        from_date,
        nhi_levy,
        effective_date,
        total_gst,
        fsl,
        nd_commission_excl_gst_,
        co_nd_premium,
        gst_on_uw_fee_,
        ar_total_payable,
        total_net_premium,
        payment_plan,
        broker_fee_excl_gst_,
        transaction_type,
        to_date,
        gst_on_ar_commission,
        policy_gst,
        total_fees,
        client_standard_industry_code,
        policy_team,
        co_commission_excl_gst_,
        co_nd_commission_excl_gst_,
        total_commission,
        gst_on_broker_fee,
        gst_on_ar_income,
        ar_fee_excl_gst_,
        natural_disaster_premium,
        gross_insurer_premium,
        ar_income_excl_gst_,
        transaction_date,
        interface,
        insurer,
        company_premium

    from source

)

select * from renamed