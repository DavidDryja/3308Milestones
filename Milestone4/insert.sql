CREATE TABLE users (
    id int,
    Username varchar(40),
    Password varchar(40),
    Fullname varchar(40),
	PRIMARY KEY (id)
  );

  CREATE TABLE tasks (
    id int,
    TaskName varchar(40),
    DueDate timestamp,
    Complete int
  );




INSERT INTO users (id, Username, Password, Fullname)
VALUES (00001, 'daviddryja', 'password123', 'David Dryja');

INSERT INTO users (id, Username, Password, Fullname)
VALUES (00002, 'juliushenkin', 'abc123', 'Julius Henkin');

INSERT INTO users (id, Username, Password, Fullname)
VALUES (00003, 'warrenpayne', 'password', 'Warren Payne');

INSERT INTO users (id, Username, Password, Fullname)
VALUES (00004, 'brycedesbrisay', 'passw0rd', 'Bryce Desbrisay');

INSERT INTO tasks (id, TaskName, DueDate, Complete)
VALUES (00001, 'walk', '2019-01-01 05:05:05', 0);

INSERT INTO tasks (id, TaskName, DueDate, Complete)
VALUES (00001, 'talk', '2019-01-01 05:05:05', 0);

INSERT INTO tasks (id, TaskName, DueDate, Complete)
VALUES (00002, 'drive', '2020-01-01 05:05:05', 0);

INSERT INTO tasks (id, TaskName, DueDate, Complete)
VALUES (00002, 'swim', '2021-01-22 05:05:05', 0);

INSERT INTO tasks (id, TaskName, DueDate, Complete)
VALUES (00003, 'jump', '2022-01-01 05:05:05', 0);

INSERT INTO tasks (id, TaskName, DueDate, Complete)
VALUES (00003, 'dive', '2023-01-01-24 05:05:05', 0);

INSERT INTO tasks (id, TaskName, DueDate, Complete)
VALUES (00004, 'run', '2025-01-01 05:05:05', 0);

INSERT INTO tasks (id, taskname, duedate, complete)
VALUES (00004, 'sayhello', '2025-01-01 05:05:05', 0);
