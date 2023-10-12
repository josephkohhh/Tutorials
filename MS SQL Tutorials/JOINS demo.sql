--- left join 
  select * from
  persons_temp pt 
  left join persons p 
  on p.person_id = pt.person_id

--- right join 
  select * from
  persons p
  right join persons_temp pt 
  on p.person_id = pt.person_id

--- inner join 
  select * from
  persons_temp pt 
  inner join persons p 
  on p.person_id = pt.person_id

-- outer join
 select * from 
 persons p 
 full outer join persons_temp pt
 on p.person_id = pt.person_id

 --union
 select * from persons
 union 
 select * from persons_temp

