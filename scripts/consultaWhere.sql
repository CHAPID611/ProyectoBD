select * from users
where (users.idUser <> 3 and users.`mail` is not null and users.password is not null) 
