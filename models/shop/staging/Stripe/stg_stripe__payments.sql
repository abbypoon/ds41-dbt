with staged as(
select * from {( source('scripe','payment'))}
),

renamed as (
    select
    id as payment_id
    ,orderid as order_id
    ,paymentmethod as payment_method
    ,status 
    ,(amount * 1.0)/100 as amount
    , created
    frtom scripe

)
select*
from renamed