SELECT * FROM `movies` WHERE year=1995;

SELECT COUNT(*) FROM actors
				JOIN roles ON actors.id=roles.actor_id
                JOIN movies ON movies.id=roles.movie_id
                WHERE movies.name='Lost in Translation';

SELECT first_name, last_nam FROM actors
				JOIN roles ON actors.id=roles.actor_id
                JOIN movies ON movies.id=roles.movie_id
                WHERE movies.name='Lost in Translation';

SELECT first_name, last_name FROM directors
				JOIN movies_directors ON directors.id=movies_directors.director_id
                JOIN movies ON movies.id=movies_directors.movie_id
                WHERE movies.name='Fight Club';                

SELECT COUNT(*) FROM movies
				JOIN movies_directors ON movies.id=movies_directors.movie_id
                JOIN directors ON movies_directors.director_id=directors.id
                WHERE directors.first_name='Clint' AND directors.last_name='Eastwood';

SELECT first_name, last_name FROM directors
				JOIN movies_directors ON directors.id=movies_directors.director_id
                JOIN movies_genres ON movies_genres.movie_id=movies_directors.movie_id
                WHERE movies_genres.genre='Horror';

SELECT actors.first_name, actors.last_name FROM actors
				JOIN roles ON actors.id=roles.actor_id
                JOIN movies ON movies.id=roles.movie_id
                JOIN movies_directors ON movies_directors.movie_id=movies.id
                JOIN directors ON directors.id=movies_directors.director_id
                WHERE directors.first_name='Christopher' AND directors.last_name='Nolan';        