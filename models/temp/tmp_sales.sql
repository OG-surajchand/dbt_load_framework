{{
    config(
        materialized= 'table',
        schema = 'DWH_TMP'
    )
}}


with products as (
    select *, 
    current_timestamp as rec_ins_ts,
    current_timestamp as rec_upd_ts
    from {{ref('stg_sales')}}
)
select * from products
