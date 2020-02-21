select
    order_id
    {% for payment_method in ['credit_card', 'coupon', 'bank_transfer', 'gift_card'] %}
    , sum(case when payment_method  = '{{ payment_method }}' then amount else 0 end) as  {{ payment_method }}_amount
    {% endfor %}
from {{ ref('stg_payments') }}
group by 1