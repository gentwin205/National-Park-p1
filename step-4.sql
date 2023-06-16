-- select the park name, campground name, open_from_mm, open_to_mm & daily_fee ordered by park name and then campground name
-- (expected: 7 rows, starting with "Blackwoods")

select p.name, c.name, daily_fee, open_from_mm, open_to_mm 
from park p
join campground c on p.park_id = c.park_id
order by  c.name asc;


-- select the park name and the total number of campgrounds for each park ordered by park name
-- (expected: 3 rows, starting with "Acadia")
select p.name, count(campground_id)
from park p
join campground c on p.park_id = c.park_id
group by p.name
order by  p.name asc;


-- select the park name, campground name, site number, max occupancy, accessible, max rv length, utilities where the campground name is 'Blackwoods'
-- (expected: 12 rows)
select p.name, c.name, site_number, max_occupancy, accessible, max_rv_length, utilities
from park p
join campground c on p.park_id = c.park_id
join site s on c.campground_id = s.campground_id 
where c.name = 'Blackwoods'
;




-- select site number, reservation name, reservation from and to date ordered by reservation from date
-- (expected: 44 rows, starting with the earliest date)


select site_number, name, from_date, to_date
from site s
join reservation r on s.site_id = r.site_id
order by from_date 
;








