select * from students 
  where (quality1 ='evil' and quality2 ='cunning') or 
        quality1 ='studious' or quality2 ='intelligent' or
        quality1 ='hufflepuff' or quality2 ='hufflepuff' or
        (quality1 ='brave' and quality2 not in ('evil'))
 order by id;
