with 

source as (

    select * from {{ source('raw', 'INVESTMENT_COMMISSIONS_1') }}

),

renamed as (

    select
        _file,
        _line,
        _sheet_name,
        _modified,
        _fivetran_synced,
        net_payable,
        licencee_code,
        adviser,
        upfront_trial_overrider,
        adviser_fee_recvd,
        date,
        commissions,
        referral_investment_referral_other,
        provider,
        portfolio_,
        own_client_lfg_client_las_client,
        batch,
        loan_amount_fum_,
        referrer,
        lfg_commission_incl_gst_,
        month_end,
        client,
        lfg_

    from source

)

select * from renamed