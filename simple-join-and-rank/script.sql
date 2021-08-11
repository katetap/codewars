select p.name, p.id, count(s.price) as sale_count, 
  rank() over (order by count(s.price)) as sale_rank
from people p
  inner join sales s
  on p.id=s.people_id 
  group by p.id
