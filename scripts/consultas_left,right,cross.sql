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
select u.mail, c.`description` as contribution
from users as u 
left join contributions as c on u.idUser = c.idUser;

#6.Mostrar las lecciones y sus contenidos, incluso si no tienen contenido asociado:
select l.idLesson, l.title as lesson, c.`description` as contribution
from lessons as l
left join languages as lan on l.idLanguage = lan.idLanguage
left join contributions as c on lan.idlanguage = c.idLanguage;

#7.Listar lecciones y el progreso del usuario, aunque no hayan iniciado ninguna lección:
select l.idLesson, l.title as lesson, u.idUser, u.mail, p.initdate, p.endDate
from users as u
left join userLesson as ul on u.idUser = ul.idUser
left join lessons as l on l.idLesson = ul.idLesson
left join progress as p on p.idLesson =l.idLesson;

#8.Obtener todos los archivos multimedia y el contenido asociado, incluso si no se han usado en contenido:
select m.idMediaFile, m.media, c.idContent,c.`description`
from mediaFiles as m
left join content as c on m.idMediaFile = c.idMediaFile;

#9.Mostrar todos los roles y los usuarios que los tienen asignados, aunque no todos los roles estén asignados:
select u.idUser, u.mail, r.`name`
from roles as r
left join userRoles as ur on  ur.idRol = r.idRol
left join users as u on u.idUser = ur.idUser;

#10.Listar todas las lecciones y el estado de progreso del usuario, aunque no haya progreso registrado:
select u.idUser, u.mail, l.idLesson, l.title, s.`name` 
from users as u
left join userLesson  as ul on ul.idUser = u.idUser
left join lessons as l on ul.idLesson = l.idLesson
left join progress as p on p.idLesson = l.idLesson
left join state as s on p.idState = s.idState;

#Consultas con RIGHT JOIN
#1.Obtener los datos personales de las personas y su correo, aunque no tengan un usuario asignado:
select p.*, u.mail
from people as p
right join users as u on u.idUser = p.idUser;

#2.Mostrar las lecciones y los idiomas, aunque no estén asignados a ninguna lección:
select lan.*, l.title as lesson
from lessons as l
right join languages as lan on lan.idLanguage = l.idLanguage;

#3.Listar usuarios y sus roles, aunque no estén asignados a un usuario:
select u.mail, r.`name`
from roles as r
right join userRoles as ur on r.idRol = ur.idRol
right join users as u on u.idUser = ur.idUser;

#4.Obtener todos los niveles y las lecciones asociadas, incluso si no tienen lecciones asignadas:
select lev.`name`, l.title
from lessons as l
right join levels as lev on lev.idLevel = l.idLevel;

#5.Mostrar los estados de progreso y las lecciones, incluso si no hay lecciones en esos estados:
select l.idLesson, l.title as lesson, s.`name` as state
from lessons as l
right join progress as p on p.idLesson = l.idLesson
right join state as s on s.idState = p.idState;

#6.Listar todos los usuarios y las lecciones que están tomando, incluso si no están tomando ninguna:
select u.idUser, u.mail, l.title as lesson
from lessons as l
right join userLesson as ul on ul.idLesson = l.idLesson
right join users as u on u.idUser = ul.idUser;

#CORREGIR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#7.Obtener todas las lecciones y el progreso de los usuarios, incluso si no han iniciado ninguna lección:
select l.title, u.mail, p.initDate, p.endDate
from progress as p
right join userProgress as up on up.idProgress = p.idProgress
right join users as u on u.idUser = up.idUser
right join userLesson as ul on ul.idUser = u.idUser
right join lessons as l on ul.idLesson = l.idLesson;

#8.Mostrar todas las contribuciones y los usuarios, incluso si no han realizado ninguna contribución:
select c.`description`, u.mail
from contributions as c 
right join users as u on c.idUser = u.idUser;

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
select u.idUser, u.mail, l.idLesson, l.title
from users as u
cross join lessons as l ;

#2.Listar todas las combinaciones posibles de usuarios y roles:
select u.idUser, u.mail, r.`name`
from users as u
cross join roles as r;

#3.Obtener todas las combinaciones de usuarios y archivos multimedia:
select u.idUser, u.mail, m.media
from users as u
cross join mediaFiles as m;

#4.Mostrar todas las combinaciones de lecciones y niveles:
select l.idLesson, l.title, lev.`name`
from lessons as l
cross join levels as lev;

#5.Listar todas las combinaciones posibles de lecciones y estados de progreso:
select l.idLesson, l.title, s.`name`
from lessons as l
cross join state as s;