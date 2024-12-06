drop database if exists app_raices;
create database if not exists app_raices;
use app_raices;

create table users (
    idUser int(20) not null auto_increment primary key,
    mail varchar(30) not null,
    password varchar(255) not null,
    createdAt datetime,
    updatedAt datetime
);

create table gender (
    idGender int(20) not null auto_increment primary key,
    name varchar(10),
    createdAt datetime,
    updatedAt datetime
);

create table people (
    idPeople int(20) not null auto_increment primary key,
    name varchar(50) not null,
    lastName varchar(50) not null,
    birthdate date not null,
    profilePicture varchar(255),
    idUser int(20),
    idGender int(20),
    foreign key (idUser) references users (idUser),
    foreign key (idGender) references gender (idGender),
    createdAt datetime,
    updatedAt datetime
);

create table roles (
    idRol int(20) not null auto_increment primary key,
    name varchar(15) default 'student',
    createdAt datetime,
    updatedAt datetime
);

create table userRoles (
    idUserRol int(20) not null auto_increment primary key,
    idUser int(20),
    idRol int(20),
    foreign key (idUser) references users (idUser),
    foreign key (idRol) references roles (idRol),
    createdAt datetime,
    updatedAt datetime
);

create table languages (
    idLanguage int(20) not null auto_increment primary key,
    name varchar(50) not null,
    community varchar(50) not null,
    description tinytext,
    createdAt datetime,
    updatedAt datetime
);

create table levels (
    idLevel int(20) not null auto_increment primary key,
    name varchar(50),
    createdAt datetime,
    updatedAt datetime
);

create table lessons (
    idLesson int(20) not null auto_increment primary key,
    idLanguage int(20),
    idLevel int(20) default null,
    title varchar(50) not null,
    description tinytext not null,
    isPremium boolean default false,
    foreign key (idLanguage) references languages (idLanguage),
    foreign key (idLevel) references levels (idLevel),
    createdAt datetime,
    updatedAt datetime
);

create table userLesson (
    idUserLesson int(20) not null auto_increment primary key,
    idUser int(20),
    idLesson int(20),
    score int(20),
    lastAccess datetime,
    foreign key (idLesson) references lessons (idLesson),
    foreign key (idUser) references users (idUser),
    createdAt datetime,
    updatedAt datetime
);

create table mediaFiles (
    idMediaFile int(20) not null auto_increment primary key,
    media varchar(50) not null,
    createdAt datetime,
    updatedAt datetime
);

create table content (
    idContent int(20) not null auto_increment primary key,
    idUser int(20),
    idLesson int(20),
    idMediaFile int(20),
    url varchar(255),
    description tinytext not null,
    foreign key (idUser) references users (idUser),
    foreign key (idLesson) references lessons (idLesson),
    foreign key (idMediaFile) references mediaFiles (idMediaFile),
    createdAt datetime,
    updatedAt datetime
);

create table state (
    idState int(20) not null auto_increment primary key,
    name varchar(15) not null,
    createdAt datetime,
    updatedAt datetime
);

create table learningProgress (
    idProgress int(20) not null auto_increment primary key,
    idUser int(20),
    idLesson int(20),
    idState int(20),
    initDate datetime not null,
    endDate datetime not null,
    score int(20),
    attempCount int(20),
    timeSpent time,
    foreign key (idUser) references users (idUser),
    foreign key (idLesson) references lessons (idLesson),
    foreign key (idState) references state (idState),
    createdAt datetime,
    updatedAt datetime
);

create table subscriptions (
    idSubscription int(20) not null auto_increment primary key,
    idUser int(20),
    subscriptionType varchar(50),
    startDate date,
    endDate date,
    status varchar(12) not null,
    foreign key (idUser) references users (idUser),
    createdAt datetime,
    updatedAt datetime
);

create table paymentsGateways (
    idPaymentsGateway int(20) not null auto_increment primary key,
    gateway varchar(50),
    createdAt datetime,
    updatedAt datetime
);

create table paymentMethods (
    idPaymentMethod int(20) not null auto_increment primary key,
    methodName varchar(15),
    createdAt datetime,
    updatedAt datetime
);

create table payments (
    idPayment int(20) not null auto_increment primary key,
    paymentCode varchar(255),
    idUser int(20),
    idSubscription int(20),
    idPaymentMethod int(20),
    idPaymentsGateway int(20),
    status varchar(15),
    paymentDate datetime not null,
    amount decimal(10, 2),
    foreign key (idUser) references users (idUser),
    foreign key (idSubscription) references subscriptions (idSubscription),
    foreign key (idPaymentMethod) references paymentMethods (idPaymentMethod),
    foreign key (idPaymentsGateway) references paymentsGateways (idPaymentsGateway),
    createdAt datetime,
    updatedAt datetime
);

create table auditLogs (
    idAuditLogs int(20) not null auto_increment primary key,
    user varchar(255),
    action varchar(50),
    tableName varchar(255),
    recordId int,
    oldValue text,
    newValue text,
    actionTime datetime
);