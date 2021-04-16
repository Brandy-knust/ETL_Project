DROP TABLE genre;
CREATE TABLE genre (
	Multiples varchar,
	Name varchar,
	Spec_Genre varchar
);
DROP TABLE books;
CREATE TABLE books (
	Name varchar,
	Author varchar,
	User_Rating varchar,
	Reviews integer,
	Price integer,
	Year integer,
	Gen_Genre varchar
	);

SELECT * FROM books;
SELECT * FROM genre;

SELECT genre.name, genre.spec_genre, books.name, books.author, books.year
FROM genre
INNER JOIN books on
genre.name=books.name
WHERE spec_genre = 'Race' OR
	spec_genre = 'Social Justice'