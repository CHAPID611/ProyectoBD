use app_raices;
# Consultas con LEFT JOIN;
#1.Obtener usuarios y sus datos personales, incluso si no tienen un registro en la tabla people:
select u.idUser, u.mail, p.`name`, p.lastName
from users as u
left join people as p on u.idUser = p.idUser;


#2.Listar lecciones y el nivel correspondiente, incluso si no tienen un nivel asociado
select l.*, lev.`name`
from lessons as l
left join levels as lev on lev.idLevel = l.idLevel;


#3.Mostrar los usuarios y sus roles, incluso si no tienen un rol asignado:

select u.mail, r.`name`
from users as u
left join userRoles as ur on u.idUser = ur.idUser
left join roles as r on ur.idRol = r.idRol;


#4.Obtener todas las lecciones y el idioma correspondiente, incluso si no están asociadas a un idioma:

select l.title, lan.`name`
from lessons as l
left join languages as lan on l.idLanguage = lan.idLanguage;

 
#5.Listar usuarios y sus contribuciones, incluso si no han realizado ninguna:


SELECT u.mail, c.description AS contribution
FROM users AS u
LEFT JOIN content AS c ON u.idUser = c.idUser;




#6.Mostrar las lecciones y sus contenidos, incluso si no tienen contenido asociado:

SELECT l.idLesson, l.title AS lesson, c.description AS content
FROM lessons AS l
LEFT JOIN content AS c ON l.idLesson = c.idLesson;


#7.Listar lecciones y el progreso del usuario, aunque no hayan iniciado ninguna lección:

SELECT l.idLesson, l.title AS lesson, u.idUser, u.mail, lp.initDate, lp.endDate
FROM users AS u
LEFT JOIN userLesson AS ul ON u.idUser = ul.idUser
LEFT JOIN lessons AS l ON l.idLesson = ul.idLesson
LEFT JOIN learningProgress AS lp ON lp.idLesson = ul.idUserLesson;


#8.Obtener todos los archivos multimedia y el contenido asociado, incluso si no se han usado en contenido:

SELECT m.idMediaFile, m.media, c.idContent, c.description
FROM mediaFiles AS m
LEFT JOIN content AS c ON m.idMediaFile = c.idMediaFile;


#9.Mostrar todos los roles y los usuarios que los tienen asignados, aunque no todos los roles estén asignados:

SELECT u.idUser, u.mail, r.name
FROM roles AS r
LEFT JOIN userRoles AS ur ON ur.idRol = r.idRol
LEFT JOIN users AS u ON u.idUser = ur.idUser;


#10.Listar todas las lecciones y el estado de progreso del usuario, aunque no haya progreso registrado:

SELECT u.idUser, u.mail, l.idLesson, l.title, s.name
FROM users AS u
LEFT JOIN userLesson AS ul ON ul.idUser = u.idUser
LEFT JOIN lessons AS l ON ul.idLesson = l.idLesson
LEFT JOIN learningProgress AS lp ON lp.idLesson = ul.idUserLesson
LEFT JOIN state AS s ON lp.idState = s.idState;


#Consultas con RIGHT JOIN
#1.Obtener los datos personales de las personas y su correo, aunque no tengan un usuario asignado:

SELECT p.name, p.lastName, u.mail
FROM people AS p
RIGHT JOIN users AS u ON p.idUser = u.idUser;


#2.Mostrar las lecciones y los idiomas, aunque no estén asignados a ninguna lección:

SELECT r.name AS role, u.mail
FROM roles AS r
RIGHT JOIN userRoles AS ur ON r.idRol = ur.idRol
RIGHT JOIN users AS u ON ur.idUser = u.idUser;


#3.Listar usuarios y sus roles, aunque no estén asignados a un usuario:

SELECT lan.name AS language, l.title AS lesson
FROM languages AS lan
RIGHT JOIN lessons AS l ON l.idLanguage = lan.idLanguage;


#4.Obtener todos los niveles y las lecciones asociadas, incluso si no tienen lecciones asignadas:

SELECT m.idMediaFile, m.media, c.idContent, c.description
FROM content AS c
RIGHT JOIN mediaFiles AS m ON m.idMediaFile = c.idMediaFile;


#5.Mostrar los estados de progreso y las lecciones, incluso si no hay lecciones en esos estados:

SELECT l.idLesson, l.title AS lesson, lev.name AS level
FROM levels AS lev
RIGHT JOIN lessons AS l ON lev.idLevel = l.idLevel;


#6.Listar todos los usuarios y las lecciones que están tomando, incluso si no están tomando ninguna:

SELECT u.mail, l.title AS lesson, p.initDate, p.endDate
FROM learningProgress AS p
RIGHT JOIN userLesson AS ul ON p.idUser = ul.idUserLesson
RIGHT JOIN users AS u ON ul.idUser = u.idUser
RIGHT JOIN lessons AS l ON ul.idLesson = l.idLesson;


#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#7.Obtener todas las lecciones y el progreso de los usuarios, incluso si no han iniciado ninguna lección:
SELECT c.idContent, c.description, m.idMediaFile, m.media
FROM mediaFiles AS m
RIGHT JOIN content AS c ON c.idMediaFile = m.idMediaFile;


#8.Mostrar todas las contribuciones y los usuarios, incluso si no han realizado ninguna contribución:
SELECT s.name AS state, l.idLesson, l.title AS lesson
FROM state AS s
RIGHT JOIN learningProgress AS lp ON s.idState = lp.idState
RIGHT JOIN userLesson AS ul ON lp.idUser = ul.idUserLesson
RIGHT JOIN lessons AS l ON ul.idLesson = l.idLesson;


#9.Listar todos los contenidos y las lecciones, incluso si no están asociados a ninguna lección:
select c.`description`, l.title
from lessons as l
right join content as c on c.idLesson = l.idLesson;

#10.Mostrar los archivos multimedia y el contenido asociado, incluso si no están en uso:
select m.media, c.`description`
from content as c
right join mediaFiles as m on m.idMediaFile = c.idMediaFile;


#Consultas con CORSS JOIN
#1.Obtener todas las combinaciones posibles de usuarios y lecciones:


select lan.`name` as language, l.title as lesson
from languages as lan
cross join lessons as l;



#2.Listar todas las combinaciones posibles de usuarios y roles:
select u.idUser, u.mail, r.`name`
from users as u
cross join roles as r;

#3.Obtener todas las combinaciones de usuarios y archivos multimedia:

select u.mail, l.title as lesson
from users as u
cross join lessons as l;


#4.Mostrar todas las combinaciones de lecciones y niveles:

select m.media, c.`description` as content
from mediaFiles as m
cross join content as c;


#5.Listar todas las combinaciones posibles de lecciones y estados de progreso:

select p.`name`, r.`name` as role
from people as p
cross join roles as r;
