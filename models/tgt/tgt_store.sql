{{
    config(
        materialized = 'incremental',
        schema = 'DWH_TGT',
        unique_key = 'id',
        merge_exclude_column = 'rec_ins_ts'
    )
}}


select * from {{ref('tmp_store')}}

