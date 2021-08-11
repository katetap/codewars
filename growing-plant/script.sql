create function count_days(int,int,int) returns int as $$
declare
  days int = 0 ;
  h int = 0;
  begin
    while h < $3 
    loop
      h = h + $1;
      days = days + 1;
      if h < $3 then 
      h  = h - $2;
      else return days; 
      end if;
    end loop;
  end;
$$ language plpgsql;

select g.id, count_days(g.up_speed, g.down_speed, g.desired_height) as num_days from growing_plant g;
