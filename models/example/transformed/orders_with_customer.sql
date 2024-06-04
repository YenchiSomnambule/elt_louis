{{ config(materialized='table')}}


select
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_date,
    o.total_amount
from {{source('YENCHIWANG_DMA','ORDERS')}} o
join {{source('YENCHIWANG_DMA','CUSTOMER')}} c ON o.customer_id = c.customer_id
