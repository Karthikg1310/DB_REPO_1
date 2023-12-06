select
    Transactionid,
    sum(amount) as total_amount
from {{ ref('transaction_data' )}}
group by 1
having (total_amount < 0)