
## Questions

-- 1. Return ALL the data in the 'movies' table.

-SELECT * FROM movies;

-- 2. Return ONLY the name column from the 'people' table

-SELECT name FROM people;

-- 3. Oops! Someone at CodeClan spelled Ian's name wrong! Change it to reflect the proper spelling (change 'Iain Henderson' to 'Ian Henderson').'

-UPDATE people
-  SET name = 'Ian Henderson'
-  WHERE name = 'Iain Henderson';

-- 4. Return ONLY your name from the 'people' table.

SELECT people.name FROM people
  WHERE name = 'Malcolm Finlayson';

 --5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies
 WHERE movies.title = 'Batman Begins';

--6. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people(name)
  VALUES('Keith');

--7. Craig Morton, has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people
   WHERE people.name = 'Craig Morton';


--8. Somehow the list of people includes two people named 'Andrew'. Change these entries to the proper names ('Jeff 4', 'Jeff 5')

SELECT people.id FROM people
  WHERE people.name = 'Andrew';

UPDATE people
  SET name = 'Jeff 4'
  WHERE people.id = 21;

  UPDATE people
    SET name = 'Jeff 5'
    WHERE people.id = 22;

--9. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

 INSERT INTO movies(title, year, show_time)
   VALUES('Guardians of the Galaxy 2',2007,'00:00');

--10. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 18:55 to 21:30

UPDATE movies
  SET show_time = '21:30'
  WHERE title = 'Guardians of the Galaxy';
