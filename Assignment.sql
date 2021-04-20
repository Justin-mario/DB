/* Question 1*/
select mov_title, mov_year
from movie;

/* Question 2*/
select mov_year
from movie
where mov_title = 'American Beauty'; 

/* Question 3 */
select mov_title
from movie
where mov_year = '1999';

/* Question 4*/
select mov_title
from movie
where mov_year = '1998';

/* Question 4*/
select rev_name, mov_title 
from reviewer, movie;

/* Question 6*/
select rev_name, mov_title 
from reviewer, movie;

/* Question 7*/
select distinct rev_name,rev_stars 
from reviewer, rating
where rev_stars > 7;

/* Question 8 */
select mov_title
from movie
where mov_title = 'null';

/* Question 9*/
select rev_name, rev_stars
from reviewer, rating
where rev_stars = 'null';

/* Question 10*/
select concat(dir_fname, " ", dir_lname) as dir_name
from director
where dir_id in( select dir_id from movie_direction where mov_id in (select mov_id from
movie where mov_title = 'Eyes Wide Shut'));