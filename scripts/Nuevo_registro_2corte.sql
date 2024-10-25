insert into users(mail,`password`, createdAt)
values("nenfar@gmail.com","1234abcd","2024-10-04 16:00:00"),
("juan@gmail.com","1234abcd","2024-10-04 16:01:00"),
("andrea@gmail.com","1234abcd","2024-10-04 16:02:00"),
("camilo@gmail.com","1234abcd","2024-10-04 16:03:00"),
("maria@gmail.com","1234abcd","2024-10-04 16:04:00"),
("esteban@gmail.com","1234abcd","2024-10-04 16:05:00"),
("sofia@gmail.com","1234abcd",now());

insert into gender (`name`,createdAt)
values("Femenino", now()),
("Masculino", now()),
("Otro", now());

insert into people(`name`, lastName,birthdate,profilePicture,idUser,idGender,createdAt)
values("Nenfar","Chapid","2000-01-15","url.jpg",1,2,"2024-10-04 16:00:00"),
("Juan","Lopez","2002-05-22","url.jpg",2,2,"2024-10-04 16:01:00"),
("Andrea", "Suarez","2004-09-30","url.jpg",3,1,"2024-10-04 16:02:00"),
("Camilo", "Cortez","2006-05-22","url.jpg",4,2,"2024-10-04 16:03:00"),
("Maria", "Torres","2007-05-02","url.jpg",5,1,"2024-10-04 16:04:00"),
("Esteban", "Rodriguez","2002-10-22","url.jpg",6,2,"2024-10-04 16:05:00"),
("Sofia", "Gomez","2010-08-22","url.jpg",7,1, now());

insert into roles(`name`,createdAt)
values("Estudiante","2024-10-04 17:00:00"),
("Contribuidor","2024-10-04 17:00:00");

insert into userRoles(idUser, idRol, createdAt)
values(1,1,"2024-10-04 17:00:00"),
(2,1,"2024-10-04 17:00:00"),
(3,1,"2024-10-04 17:00:00"),
(4,2,"2024-10-04 17:00:00"),
(5,2,"2024-10-04 17:00:00"),
(6,2,"2024-10-04 17:00:00"),
(7,1,now());

insert into languages(`name`, community, `description`,createdAt)
values("Awapit","Awá","Awapit es la lengua hablada por la comunidad Awá","2024-10-04 16:06:00"),
("A'ingae","Confán","A'ingae es la lengua hablada por la comunidad Cofán","2024-10-04 16:07:00"),
("Koreguaje","Coreguaje","Koreguaje es la lengua hablada por la comunidad Coreguaje","2024-10-04 16:08:00"),
("Embera","Embera","Embera es la lengua hablada por la comunidad Embera","2024-10-04 16:09:00"),
("Inga","Inga","Inga es la lengua hablada por la comunidad Inga, que pertenece a la familia Quechua","2024-10-04 16:10:00"),
("Kamentsá","Kamentsá","kamentsá es la lengua hablada por la comunidad Kamentsá","2024-10-04 16:11:00"),
("Kichwa","Kichwa","Kichwa es la lengua hablada por la comunidad Kichwa, que es una variante del Quechua","2024-10-04 16:12:00"),
("Nasa Yuwe","Nasa","Nasa Yuwe es la lengua hablada por la comunidad Nasa","2024-10-04 16:13:00"),
("Pasto","Pastos","Pasto es la lengua hablada por la comunidad Pastos","2024-10-04 16:14:00"),
("Siona","Siona","Siona es la lengua hablada por la comunidad Siona","2024-10-04 16:15:00"),
("Murui Muinane","Murui Muina","Murui Muinane es la lengua hablada por la comunidad Murui Muina","2024-10-04 16:16:00"),
("Pijao","Pijao","Pijao es la lengua hablada por la comunidad Pijao","2024-10-04 16:17:00"),
("Carijona","Carijona","Carijona es la lengua hablada por la comunidad Carijona","2024-10-04 16:18:00");

insert into levels(`name`,createdAt)
values("Facil","2024-10-04 17:00:00"),
("Medio","2024-10-04 17:00:00"),
("Difícil","2024-10-04 17:00:00");

insert into lessons(idLanguage,idLevel,title,`description`,createdAt)
values(1,1,"Clase Awapit","Conceptos basicos","2024-10-10 17:00:00"),
(1,2,"Clase Awapit","Gramatica","2024-10-04 17:00:00"),
(1,3,"Clase Awapit","Aprendizaje Oral","2024-10-04 17:00:00"),
(2,1,"Clase A'ingae","Conceptos basicos","2024-10-04 17:00:00"),
(2,2,"Clase A'ingae","Gramatica","2024-10-04 17:00:00"),
(2,3,"Clase A'ingae","Aprendizaje Oral","2024-10-04 17:00:00"),
(3,1,"Clase Koreguaje","Conceptos basicos","2024-10-04 17:00:00"),
(3,2,"Clase Koreguaje","Gramatica","2024-10-04 17:00:00"),
(3,3,"Clase Koreguaje","Aprendizaje Oral","2024-10-04 17:00:00"),
(4,1,"Clase Embera","Conceptos basicos","2024-10-04 17:00:00"),
(4,2,"Clase Embera","Gramatica","2024-10-04 17:00:00"),
(4,3,"Clase Embera","Aprendizaje Oral","2024-10-04 17:00:00"),
(5,1,"Clase Inga","Conceptos basicos","2024-10-04 17:00:00"),
(5,2,"Clase Inga","Gramatica","2024-10-04 17:00:00"),
(5,3,"Clase Inga","Aprendizaje Oral","2024-10-04 17:00:00"),
(6,1,"Clase Kamentsá","Conceptos basicos","2024-10-04 17:00:00"),
(6,2,"Clase Kamentsá","Gramatica","2024-10-04 17:00:00"),
(6,3,"Clase Kamentsá","Aprendizaje Oral","2024-10-04 17:00:00"),
(7,1,"Clase Kichwa","Conceptos basicos","2024-10-04 17:00:00"),
(7,2,"Clase Kichwa","Gramatica","2024-10-04 17:00:00"),
(7,3,"Clase Kichwa","Aprendizaje Oral","2024-10-04 17:00:00"),
(8,1,"Clase Nasa","Conceptos basicos","2024-10-04 17:00:00"),
(8,2,"Clase Nasa","Gramatica","2024-10-04 17:00:00"),
(8,3,"Clase Nasa","Aprendizaje Oral","2024-10-04 17:00:00"),
(9,1,"Clase Pasto","Conceptos basicos","2024-10-04 17:00:00"),
(9,2,"Clase Pasto","Gramatica","2024-10-04 17:00:00"),
(9,3,"Clase Pasto","Aprendizaje Oral","2024-10-04 17:00:00"),
(10,1,"Clase Siona","Conceptos basicos","2024-10-04 17:00:00"),
(10,2,"Clase Siona","Gramatica","2024-10-04 17:00:00"),
(10,3,"Clase Siona","Aprendizaje Oral","2024-10-04 17:00:00"),
(11,1,"Clase Murui","Conceptos basicos","2024-10-04 17:00:00"),
(11,2,"Clase Murui","Gramatica","2024-10-04 17:00:00"),
(11,3,"Clase Murui","Aprendizaje Oral","2024-10-04 17:00:00"),
(12,1,"Clase Pijao","Conceptos basicos","2024-10-04 17:00:00"),
(12,2,"Clase Pijao","Gramatica","2024-10-04 17:00:00"),
(12,3,"Clase Pijao","Aprendizaje Oral","2024-10-04 17:00:00"),
(13,1,"Clase Carijona","Conceptos basicos","2024-10-04 17:00:00"),
(13,2,"Clase Carijona","Gramatica","2024-10-04 17:00:00"),
(13,3,"Clase Carijona","Aprendizaje Oral","2024-10-04 17:00:00");

insert into userLesson(idUser,idLesson,score,lastAccess, createdAt)
values(1,20,"100",now(),"2024-10-04 15:00:00"),
(2,2,"150",now(),"2024-10-04 11:46:00"),
(3,16,"230",now(),"2024-10-04 07:20:00");

insert into mediaFiles(media,createdAt)
values("imagen","2024-10-04 07:20:00"),
("audio","2024-10-04 07:20:00"),
("video","2024-10-04 07:20:00"),
("documento","2024-10-04 07:20:00");

insert into content(idLesson,idMediaFile,url,`description`,createdAt)
values(1,1,"url.jpg","mascaras ancestrales de la comunidad Awá","2024-10-04 07:20:00"),
(2,2,"url.mp3","saludo de buenos dias en Awapit","2024-10-04 07:20:00"),
(3,3,"url.mp4","coversación en Awapit","2024-10-04 07:20:00"),
(4,4,"url.doc","alfabeto A'ingae","2024-10-04 07:20:00");

insert into state(`name`,createdAt)
values("No iniciado","2024-10-04 07:20:00"),
("En progreso","2024-10-04 07:20:00"),
("Completado","2024-10-04 07:20:00");

insert into learningProgress(idUser,idLesson,idState,initDate,endDate,score,attempCount,timeSpent,createdAt)
values(1,20,3,"2024-10-04 07:20:00",now(),1000,2,"07:20:00","2024-10-04 07:20:00"),
(2,2,3,"2024-10-04 07:20:00",now(),1000,5,"07:20:00","2024-10-04 07:20:00"),
(7,10,3,"2024-10-04 07:20:00",now(),1000,1,"07:20:00","2024-10-04 07:20:00"),
(3,16,3,"2024-10-04 07:20:00",now(),1000,2,"07:20:00","2024-10-04 07:20:00");

