#CONSULTAS INNER JOIN
use app_raices;

#1 Obtener los nombres y apellidos de los usuarios junto con sus correos electrónicos.
select  p.`name`, p.lastName, u.mail from people as p
inner join users as u
on p.idUser = u.idUser;

#2 Listar todos los roles y los usuarios que tienen asignados esos roles.
 select r.`name`, u.mail, ur.idRol, ur.idUser from users as u
 inner join userRoles as ur
 on u.idUser = ur.idUser
 inner join roles as r
 on ur.idRol = r.idRol;
 
#3 Mostrar las lecciones junto con el nombre del idioma y el nivel.
select le.title, la.`name`,lev.`name` from lessons as le
inner join languages as la 
on la.idLanguage = le.idLesson
inner join levels as lev
on le.idLesson = lev.idLevel;



#5 Listar todos los contenidos junto con el título de la lección.
select m.media, le.title from mediafiles as m
inner join content as c
on m.idMediaFile=c.idMediaFile
inner join lessons as le
on c.idLesson = le.idLesson;

#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#6 Obtener los progresos de los usuarios en las lecciones, incluyendo el estado.
select u.mail, l.title, p.initDate, p.endDate, s.`name` 
from users as u 
inner join learningProgress as p
on u.idUser = p.idUser
inner join lessons as l
on p.idLesson = l.idLesson
inner join state as s
on p.idState = s.idState;


#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#7 Mostrar el progreso de los usuarios y la lección asociada.
select u.mail, l.title, p.initDate, p.endDate
from users as u 
inner join learningProgress as p
on u.idUser = p.idUser
inner join lessons as l
on p.idLesson = l.idLesson;




#9 Obtener los archivos multimedia junto con sus descripciones y la lección asociada
select m.media, c.`description`, l.title 
from mediaFiles as m
inner join content as c
on m.idMediaFile = c.idMediaFile
inner join lessons as l
on c.idLesson = l.idLesson;


#11 Listar los usuarios y los roles que tienen
select p.`name`, p.lastName, u.mail, r.`name` 
from people as p
inner join users as u
on p.idUser = u.idUser
inner join userRoles as ur
on u.idUser = ur.idUser
inner join roles as r
on ur.idRol = r.idRol;


#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#12 Mostrar el estado de progreso de las lecciones.
select l.title, s.`name`, pr.initDate, pr.endDate
from learningProgress as pr
inner join lessons as l
on pr.idLesson = l.idLesson
inner join state as s
on pr.idState = s.idState;



#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#13 Obtener el progreso de los usuarios en relación con las lecciones y sus estados.
select l.title, s.`name`, pr.initDate, pr.endDate
from learningProgress as pr
inner join lessons as l
on pr.idLesson = l.idLesson
inner join state as s
on pr.idState = s.idState;


#14 Listar todos los archivos multimedia y sus descripciones en las lecciones. ok
select u.mail, mf.media, c.`description`
from users as u
inner join content as c on c.idUser = u.idUser
inner join mediaFiles as mf on c.idMediaFile = mf.idMediaFile;



#15 Mostrar las lecciones de un idioma específico junto con su nivel. ok
select le.title, le.`description`, lvl.`name` 
from lessons as le
inner join levels as lvl
on le.idLevel = lvl.idLevel
inner join languages as la
on le.idLanguage = la.idLanguage
where la.`name` = 'Awapit';
 




#17 Listar las contribuciones de los usuarios junto con los archivos multimedia utilizados.
select u.mail, mf.media, c.`description`
from users as u
inner join contributions as c on c.idUser = u.idUser
inner join mediaFiles as mf on c.idMediaFiles = mf.idMediaFiles;


#18 Obtener la descripción de los contenidos de lecciones específicas. ok
select  l.title, c.`description`
FROM content as c
INNER JOIN lessons AS l ON c.idLesson = l.idLesson
WHERE l.title = 'Clase Awapit'; 

#19 Mostrar los nombres de los usuarios y los niveles de las lecciones que están tomando.
select u.mail, p.`name`, l.title, lvl.`name` as level_name
from users as u
inner join people as p on u.idUser = p.idUser
inner join userLesson as ul on u.idUser = ul.idUser
inner join lessons as l on ul.idLesson = l.idLesson
inner join levels as lvl on l.idLevel = lvl.idLevel;

#20 Listar las lecciones y sus estados de progreso. ok
select l.title, s.name as state
from progress as pr
inner join lessons as l on pr.idLesson = l.idLesson
inner join state as s on pr.idState = s.idState;

SELECT u.mail AS UserName, l.title AS LessonTitle, lp.score AS Score, lp.attempCount AS AttemptCount
FROM learningProgress lp
INNER JOIN userLesson ul ON lp.idUser = ul.idUserLesson
INNER JOIN users u ON ul.idUser = u.idUser
INNER JOIN lessons l ON ul.idLesson = l.idLesson;

SELECT lv.name AS LevelName, l.title AS LessonTitle, AVG(lp.timeSpent) AS AvgTimeSpent
FROM learningProgress lp
INNER JOIN userLesson ul ON lp.idLesson = ul.idUserLesson
INNER JOIN lessons l ON ul.idLesson = l.idLesson
INNER JOIN levels lv ON l.idLevel = lv.idLevel
GROUP BY lv.name, l.title;


SELECT u.mail AS UserName, s.startDate, s.endDate
FROM subscriptions s
INNER JOIN users u ON s.idUser = u.idUser
WHERE s.status = 'active';
