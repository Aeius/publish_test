create database lecture;
use lecture;
create table dept(
        deptno int,
        dname varchar(10),
        loc varchar(10) 
);
insert into dept values(1111,'user1', 'test');
insert into dept values(2222,'user2', 'test');
insert into dept values(3333,'user3', 'test');
insert into dept values(4444,'user4', 'test');
commit;
