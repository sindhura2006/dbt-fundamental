
  create or replace  view RAW.dbt_palleti.my_second_dbt_model 
  
   as (
    -- Use the `ref` function to select from other models

select *
from RAW.dbt_palleti.my_first_dbt_model
where id = 1
  );
