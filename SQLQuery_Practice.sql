--- SELECT ALL STUDENTS WHO HAVE ATLEAST ONE COURSE
select FirstName, LastName from Student s inner join 
StudentCourse sc on s.StudentID = sc.StudentID

--- SELECT ALL MALE STUDENTS WHO HAVE ATLEAST ONE COURSE
select FirstName, LastName, (select Name FROM Gender G WHERE s.GenderID = G.GenderID) AS Gender from Student s inner join 
StudentCourse sc on s.StudentID = sc.StudentID
where s.GenderID = 1

--- SELECT ALL FEMALE STUDENTS "FULLNAME"
select FirstName + ' ' + LastName as Fullname, (select Name FROM Gender G WHERE s.GenderID = G.GenderID) AS Gender from Student s
where s.GenderID = 2