select 
    DATE (created_at), count(content)
from `platzi-cloud-data.warehouse.fct_comments_material` 
where user_id = 2264451
    group by 1
    order by 1
