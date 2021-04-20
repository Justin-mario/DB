CREATE TABLE actor (
act_id 		int							NOT NULL,
act_fname		char(20)				NOT NULL,
act_lname 		char(20)				NOT NULL,
act_gender    	char(1)					NOT NULL,
CONSTRAINT actor_PK PRIMARY KEY(act_id)
);

CREATE TABLE director (
dir_id 		int					NOT NULL,
dir_fname		char(20)				NULL,
dir_lname 		char(20)				NOT NULL,
CONSTRAINT director_PK PRIMARY KEY(dir_id)
);

CREATE TABLE movie (
mov_id 		int							NOT NULL,
mov_title		char(50)				NOT NULL,
mov_year 		integer					NOT NULL,
mov_time		integer					NOT NULL,
mov_lang		char(50)				NOT NULL,
mov_dt_rel		date					NULL,
mov_rel_country	char(5)					NOT NULL,
CONSTRAINT movie_PK PRIMARY KEY(mov_id)
);

CREATE TABLE movie_direction (
dir_id 		int					NOT NULL,
mov_id		int				    NOT NULL,
CONSTRAINT moviedirection_PK PRIMARY KEY(dir_id, mov_id),
CONSTRAINT 		dir_FK	FOREIGN KEY(dir_id) REFERENCES director (dir_id),
CONSTRAINT 		actor_FK FOREIGN KEY(mov_id) REFERENCES movie (mov_id)
);

CREATE TABLE movie_cast (
act_id 		int					NOT NULL,
mov_id		int				    NOT NULL,
`role`		char(30)			NOT NULL,
CONSTRAINT moviecast_PK PRIMARY KEY(act_id, mov_id),
CONSTRAINT 		movi_FK	FOREIGN KEY(mov_id) REFERENCES movie (mov_id),
CONSTRAINT 		actors_FK FOREIGN KEY(act_id) REFERENCES actor (act_id)
);

CREATE TABLE reviewer (
rev_id 		int					NOT NULL,
rev_name		char(30)		NOT NULL,
CONSTRAINT reviewer_PK PRIMARY KEY(rev_id)
);

CREATE TABLE genres (
gen_id 		int					NOT NULL,
gen_title		char(20)				NULL,
CONSTRAINT genres_PK PRIMARY KEY(gen_id)
);

CREATE TABLE movie_genres (
mov_id		int					not NULL,
gen_id 		int					not NULL,
CONSTRAINT moviegenres_PK PRIMARY KEY(mov_id, gen_id),
CONSTRAINT 		mov_FK	FOREIGN KEY(mov_id) REFERENCES movie (mov_id),
CONSTRAINT 		genres_FK FOREIGN KEY(gen_id) REFERENCES genres (gen_id)
);

CREATE TABLE rating (
mov_id 			int							NOT NULL,
rev_id			int							NOT NULL,
rev_stars 		int							 NULL,
num_o_ratings	int							 NULL,
CONSTRAINT director_PK PRIMARY KEY(mov_id, rev_id),
CONSTRAINT 		movie_FK	FOREIGN KEY(mov_id) REFERENCES movie (mov_id),
CONSTRAINT 		rev_FK	FOREIGN KEY(rev_id) REFERENCES reviewer (rev_id)
);

