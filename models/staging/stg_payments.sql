{{
  config(
    materialized='view'
  )
}}
select
   "orderID" as order_id
,  "AMOUNT" as amount
, "paymentMethod" as payment_method
from {{source('stripe', 'payment')}}