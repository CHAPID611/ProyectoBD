use app_raices;
# SUBCONSULTAS 
# WHERE
# Filtrar por comparación de fechas
select * 
from lessons 
where createdat > (select max(createdat) from lessons where idlanguage = 13);

# Filtrar registros basados en el valor mínimo de otra columna
select * 
from userroles 
where createdat = (select max(createdat) from userroles);

select * 
from lessons 
where length(title) > (select min(length(title)) from lessons where idlanguage = 2);

# FROM
select ul.iduser, ul.idlesson, l.title
from (select * from userlesson where iduser = 1) as ul
inner join lessons as l on ul.idlesson = l.idlesson;

select r.name, count(*) as total_users
from (select * from userroles where idrol = 1) as ur
inner join roles as r on ur.idrol = r.idrol
group by r.name;

# SELECT
select iduser, 
(select count(*) from userlesson where userlesson.iduser = users.iduser) as lesson_count
from users;

select idlesson, 
(select name from languages where languages.idlanguage = lessons.idlanguage) as language_name
from lessons;
	
# IN
select * from lessons 
where idlanguage in (select idlanguage from languages where community = 'Inga');

select * from users 
where iduser in (select iduser from userroles where idrol = 2);



#EXISTS
select * from languages as l
where exists (select * from lessons where lessons.idlanguage = l.idlanguage);

SELECT * 
FROM users AS u
WHERE EXISTS (SELECT * FROM content WHERE content.idUser = u.idUser);


select * from lessons l
where exists (select * from progress where progress.idlesson = l.idlesson);

#ANY/ALL
select * from lessons 
where idlanguage = any (select idlanguage from languages where community = 'Inga');



select * from progress 
where initdate > all (select initdate from progress where idstate = 1);

select * from users 
where createdat > any (select createdat from users where mail like '%@gmail.com');

