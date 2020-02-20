    select
        id as order_id
        , order_date as order_date
        , user_id as customer_id
    from raw.jaffle_shop.orders