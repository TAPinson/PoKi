--1 What grades are stored in the database?
--SELECT Name
--FROM Grade

--2 What emotions may be associated with a poem?
--SELECT Name
--FROM Emotion

--3 How many poems are in the database?
--SELECT COUNT(Poem.Id)
--FROM Poem

--4 Sort authors alphabetically by name. What are the names of the top 76 authors?
--SELECT TOP 76 Author.Name
--FROM Author
--ORDER BY Author.Name

--5 Starting with the above query, add the grade of each of the authors.
--SELECT TOP 76 Author.Name, Grade.Name
--FROM Author
--JOIN Grade ON Author.GradeId = Grade.Id
--ORDER BY Author.Name, Grade.Name

--6 Starting with the above query, add the recorded gender of each of the authors.
--SELECT TOP 76 Author.Name, Grade.Name AS GradeName, Gender.Name AS GenderName
--FROM Author
--JOIN Grade ON Author.GradeId = Grade.Id
--JOIN Gender ON Author.GenderId = Gender.Id
--ORDER BY Author.Name, Grade.Name, Gender.Name


--7 What is the total number of words in all poems in the database?
--SELECT SUM(Poem.WordCount)
--FROM Poem

--8 Which poem has the fewest characters?
--SELECT TOP 1 Poem.Title, Poem.CharCount
--FROM Poem
--ORDER BY Poem.CharCount, Poem.Title

--9 How many authors are in the third grade?
--SELECT COUNT(Author.GradeId)
--FROM Author
--WHERE Author.GradeId = 3

--10 How many authors are in the first, second or third grades?
--SELECT GradeId, COUNT(GradeId) AS Authors
--FROM Author
--WHERE GradeId = 1 OR GradeId = 2 OR GradeId = 3
--GROUP BY GradeId
--ORDER BY GradeId

--11 What is the total number of poems written by fourth graders?
--SELECT COUNT(Poem.Id) AS NumOfPoems
--FROM Poem
--JOIN Author ON Author.Id = Poem.AuthorId
--WHERE Author.GradeId = 4

--12 How many poems are there per grade?
--SELECT Grade.Id, COUNT(Poem.AuthorId) AS numOfPoems
--FROM Grade
--JOIN Author ON Author.GradeId = Grade.Id
--JOIN Poem on Poem.AuthorId = Author.Id
--GROUP BY Grade.Id, Author.GradeId
--ORDER BY Id

--13 How many authors are in each grade? (Order your results by grade starting with 1st Grade)
--SELECT DISTINCT Grade.Name, COUNT(Author.Id) AS numOfAuthors
--FROM Grade
--JOIN Author ON Author.GradeId = Grade.Id
--GROUP BY Grade.Name

