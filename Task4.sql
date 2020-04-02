CREATE TABLE Enrollment (
    IdEnrollment int  NOT NULL,
    Semester int  NOT NULL,
    IdStudy int  NOT NULL,
    StartDate date  NOT NULL,
    CONSTRAINT Enrollment_pk PRIMARY KEY  (IdEnrollment)
);

CREATE TABLE Student (
    IndexNumber nvarchar(100)  NOT NULL,
    FirstName nvarchar(100)  NOT NULL,
    LastName nvarchar(100)  NOT NULL,
    BirthDate date  NOT NULL,
    IdEnrollment int  NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY  (IndexNumber)
);

CREATE TABLE Studies (
    IdStudy int  NOT NULL,
    Name nvarchar(100)  NOT NULL,
    CONSTRAINT Studies_pk PRIMARY KEY  (IdStudy)
);

ALTER TABLE Enrollment ADD CONSTRAINT Enrollment_Studies
    FOREIGN KEY (IdStudy)
    REFERENCES Studies (IdStudy);

ALTER TABLE Student ADD CONSTRAINT Student_Enrollment
    FOREIGN KEY (IdEnrollment)
    REFERENCES Enrollment (IdEnrollment);

insert into Studies (IdStudy,Name)
values
(1,'Computer Science'),
(2, 'New Media Arts'),
(3, 'Culture of Japan')

insert into Enrollment (IdEnrollment,Semester, IdStudy, StartDate)
values
(1, 1, 1, '2020-10-01'),
(2, 1, 2, '2020-10-05'),
(3, 2, 3, '2020-11-01')


insert into Student (IndexNumber, FirstName, LastName, BirthDate, IdEnrollment) values
('s1234','Jan','Kowalski','2000-04-01', 1),
('s5678', 'Anna', 'Kotowska', '2001-07-16', 2),
('s9012', 'Lapis', 'Lazuli', '1900-01-01',2),
('s1122', 'Sans', 'The Skeleton', '1999-12-30',1),
('s6666', 'Al', 'Caholic', '2003-03-03', 3)

