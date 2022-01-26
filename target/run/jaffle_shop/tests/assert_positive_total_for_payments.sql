select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select
    order_id,
    sum(amount) as total_amount
from RAW.dbt_palleti.stg_payments
group by 1
having not(total_amount >= 0)
      
    ) dbt_internal_test