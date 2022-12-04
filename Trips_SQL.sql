--Explore your data, perhaps looking at the total number of rows, distinct values, maximum, minimum, or mean values
select count(ride_length)
from [dbo].[ALL_TRIPS]


select MAX(ride_length)
from [dbo].[ALL_TRIPS]

select min(ride_length)
from [dbo].[ALL_TRIPS]

select min(ride_length), member_casual
from [dbo].[ALL_TRIPS]
group by member_casual


select distinct(ride_length), ride_id, member_casual
from [dbo].[ALL_TRIPS]

select AVG(ride_length), member_casual
from [dbo].[ALL_TRIPS]
group by member_casual

select AVG(ride_length), member_casual, day_of_week
from [dbo].[ALL_TRIPS]
group by member_casual, day_of_week


select AVG(ride_length), member_casual
from [dbo].[ALL_TRIPS]
where member_casual = 'member'
group by member_casual

select AVG(ride_length), member_casual
from [dbo].[ALL_TRIPS]
where member_casual = 'casual'
group by member_casual

select COUNT(member_casual) as Members
from [dbo].[ALL_TRIPS]
where member_casual = 'member'

select distinct count(*)
from [dbo].[ALL_TRIPS]
where member_casual = 'member'

select count(*)
from [dbo].[ALL_TRIPS]
where member_casual = 'member' or (day_of_week between 'monday' and'friday')

select count(*)
from [dbo].[ALL_TRIPS]
where member_casual = 'member' and (day_of_week between 'saturday' and 'sunday')

select distinct count(*) 
from [dbo].[ALL_TRIPS]
where member_casual ='casual'


select count(*)
from [dbo].[ALL_TRIPS]
where member_casual = 'casual' and (DAY between 1 and 5)

select count(*)
from [dbo].[ALL_TRIPS]
where member_casual = 'casual' and (DAY between 6 and 7)

select count(*)
from [dbo].[ALL_TRIPS]
where day between 1 and 7

select count(*)
from [dbo].[ALL_TRIPS]
where day_of_week = 'sunday' or  day_of_week <= 'saturday'



select sum(ride_length)
from [dbo].[ALL_TRIPS]

select count(member_casual) , day_of_week
from [dbo].[ALL_TRIPS]
--where member_casual = 'member' 
group by  day_of_week

select count(member_casual) ,day,
	case when day = '1' then 'Sunday'
	when day= '2' then 'Monday'
	when day = '3' then 'Tuesday'
	when day = '4' then 'Wednesday'
	when day = '5' then 'Thursday'
	when day = '6' then 'Friday'
	else 'Saturday'
	end as day_of_week
from [dbo].[ALL_TRIPS]
group by day_of_week,day