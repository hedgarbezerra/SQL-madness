select table_name, constraint_name, status, owner
from all_constraints
where r_owner = :r_owner
and constraint_type = 'R'
and r_constraint_name in
 (
   select constraint_name from all_constraints
   where constraint_type in ('P', 'U')
   and table_name = :r_table_name
   and owner = :r_owner
 )
order by table_name, constraint_name