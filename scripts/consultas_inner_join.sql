#CONSULTAS INNER JOIN
use app_raices;
#1 Obtener los nombres y apellidos de los usuarios junto con sus correos electrónicos.
select  p.`name`, p.lastName, u.mail from people as p
inner join users as u
on p.idUser = u.idUser;

#2 Listar todos los roles y los usuarios que tienen asignados esos roles.
 select r.`name`, u.mail, ur.idRol, ur.idUser from users as u
 inner join userRol as ur
 on u.idUser = ur.idUser
 inner join roles as r
 on ur.idRol = r.idRol;
 
#3 Mostrar las lecciones junto con el nombre del idioma y el nivel.
select le.title, la.`name`,lev.`name` from lessons as le
inner join languages as la 
on la.idLanguage = le.idLesson
inner join levels as lev
on le.idLesson = lev.idLevel;

#4 Obtener el historial de contribuciones de un usuario específico.
select u.mail, c.`description`,c.contributionDate,l.`name`,m.media from contributions as c
inner join users as u
on c.idUser = u.idUser
inner join mediafiles as m
on c.idMediaFiles = m.idMediaFiles
inner join Languages as l
on c.idLanguage = l.idLanguage
where u.idUser = 4;

#5 Listar todos los contenidos junto con el título de la lección.
select m.media, le.title from mediafiles as m
inner join content as c
on m.idMediaFiles=c.idMediaFiles
inner join lessons as le
on c.idLesson = le.idLesson;

#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#6 Obtener los progresos de los usuarios en las lecciones, incluyendo el estado.
select u.mail,l.title, p.initDate, p.endDate, s.`name` from users as u 
inner join userProgress as up
on u.idUser=up.idUser
inner join progress as p
on up.idProgress = p.idProgress
inner join lessons as l
on p.idLesson = l.idLesson
inner join state as s
on p.idState = s.idState;

#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#7 Mostrar el progreso de los usuarios y la lección asociada.
select u.mail,l.title, p.initDate, p.endDate from users as u 
inner join userProgress as up
on u.idUser=up.idUser
inner join progress as p
on up.idProgress = p.idProgress
inner join lessons as l
on p.idLesson = l.idLesson;

#8 Listar las contribuciones de los usuarios y el idioma asociado.
select u.mail, c.`description`, l.`name` from users as u
inner join contributions as c
on u.idUser = c.idUser
inner join languages as l
on c.idLanguage = l.idLanguage;

#9 Obtener los archivos multimedia junto con sus descripciones y la lección asociada
select m.media, c.`description`,l.title from mediaFiles as m
inner join content as c
on m.idMediaFiles = c.idMediaFiles
inner join lessons as l
on c.idLesson = l.idLesson;

#11 Listar los usuarios y los roles que tienen
select  p.`name`, p.lastName, u.mail, r.`name` from people as p
inner join users as u
on p.idUser = u.idUser
inner join userRol as ur
on u.idUser = ur.idUser
inner join Roles as r
on ur.idRol = r.idRol;

#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#12 Mostrar el estado de progreso de las lecciones.
select l.title, s.`name`, pr.initDate, pr.endDate
from users as u
inner join userProgress as up on u.idUser = up.idUser
inner join progress as pr on up.idProgress = pr.idProgress
inner join lessons as l on pr.idLesson = l.idLesson
inner join state as s on pr.idState = s.idState;

#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#13 Obtener el progreso de los usuarios en relación con las lecciones y sus estados.
select l.title, s.`name`, pr.initDate, pr.endDate
from users as u
inner join userProgress as up on up.idUser = u.idUser
inner join progress as pr on pr.idProgress = up.idProgress
inner join lessons as l on pr.idLesson = l.idLesson
inner join state as s on pr.idState = s.idState;

#14 Listar todos los archivos multimedia y sus descripciones en las lecciones. ok
select mf.media, l.title, c.description
from content as c
inner join lessons as l on c.idLesson = l.idLesson
inner join mediaFiles as mf on c.idMediaFiles = mf.idMediaFiles;


#15 Mostrar las lecciones de un idioma específico junto con su nivel. ok
select l.title, lvl.`name`
from lessons as l
inner  join levels  as lvl on l.idLevel = lvl.idLevel
inner join languages as lang on l.idLanguage = lang.idLanguage
WHERE lang.name = 'Awapit'; 

#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#16 Obtener la lista de usuarios y el progreso en lecciones específicas.
select u.mail, l.title, pr.initDate, pr.endDate
from users as u
inner join userProgress as up on u.idUser = up.idUser
inner join progress as pr on pr.idProgress = up.idProgress
inner join lessons as l on l.idLesson = pr.idLesson
where l.title = 'Clase Awapit';


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