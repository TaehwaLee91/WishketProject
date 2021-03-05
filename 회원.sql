create table 회원 (
    mno int primary key auto_increment,
    userid varchar(20) not null,
    email varchar(50) not null,
    passwd varchar(20) not null,
    regdate timestamp default current_timestamp
);

insert into 회원 (userid, email, passwd) values (?,?,?)