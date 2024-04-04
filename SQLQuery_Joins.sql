--- INNER JOIN
SELECT * From Student inner JOIN StudentCourse on Student.StudentID = StudentCourse.StudentID order by Student.FirstName

--- USING ALIAS
SELECT * From Student AS A inner JOIN StudentCourse AS B on A.StudentID = B.StudentID order by A.FirstName

--- ALIAS AND CONCATENANTION
SELECT *, (FirstName +' '+ LastName) AS FullName FROM Student

--- RIGHT OUTER JOIN
SELECT * FROM Student AS S RIGHT OUTER JOIN StudentCourse AS SC ON S.StudentID = SC.StudentID

--- LEFT OUTER JOIN
SELECT * FROM Student AS S LEFT OUTER JOIN StudentCourse AS SC ON S.StudentID = SC.StudentID

--- FULL OUTER JOIN
SELECT * FROM Student AS S FULL OUTER JOIN StudentCourse AS SC ON S.StudentID = SC.StudentID

--- SUB QUERY
SELECT STUDENTID, FIRSTNAME, LASTNAME, 
(SELECT NAME FROM Gender G WHERE S.GenderID = G.GenderID) AS Gender,
BirthDate, EmailAddress FROM Student S

--- CASE
SELECT FirstName, LastName, 
CASE GenderID when 1 then 'Male'
             when 2 then 'Female'
             when 3 then 'Rather Not Say'
             else 'Unknown'
END AS Gender
FROM Student