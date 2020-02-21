{{
  config(
    materialized='view'
  )
}}
select
   "orderID" as order_id
,  "AMOUNT" as amount
from {{source('stripe', 'payment')}}