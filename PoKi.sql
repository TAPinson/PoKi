﻿--1
--SELECT Name
--FROM Grade

--2
--SELECT Name
--FROM Emotion

--3
--SELECT COUNT(Poem.Id)
--FROM Poem

--4
--SELECT TOP 76 Author.Name
--FROM Author
--ORDER BY Author.Name

--5
--SELECT TOP 76 Author.Name, Grade.Name
--FROM Author
--JOIN Grade ON Author.GradeId = Grade.Id
--ORDER BY Author.Name, Grade.Name

--6
--SELECT TOP 76 Author.Name, Grade.Name AS GradeName, Gender.Name AS GenderName
--FROM Author
--JOIN Grade ON Author.GradeId = Grade.Id
--JOIN Gender ON Author.GenderId = Gender.Id
--ORDER BY Author.Name, Grade.Name, Gender.Name


--7
--SELECT SUM(Poem.WordCount)
--FROM Poem

--8
--SELECT TOP 1 Poem.Title, Poem.CharCount
--FROM Poem
--ORDER BY Poem.CharCount, Poem.Title

--9 Not 100% sure if this is correct, but I think so
--SELECT COUNT(Author.GradeId)
--FROM Author
--WHERE Author.GradeId = 3

