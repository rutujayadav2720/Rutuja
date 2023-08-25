use krish;

create table technology(
id integer,
technology varchar(50) not null
);

insert into technology values(1,'DS'),
(1,'POWERBI'),
(1,'PYTHON'),
(1,'SQL'),
(2,'POWERBI'),
(2,'PYTHON'),
(2,'SQL'),
(3,'POWERBI'),
(3,'PYTHON'),
(3,'SQL');

select * from technology;

#Display ids of "DS","SQL","PYTHON".

select id from technology where technology in("DS","SQL","PYTHON");

select id
from technology
where technology='DS'
and id in(
	select id
    from technology
    where technology='SQL'
    and id in(
		select id
        from technology
        where technology='PYTHON'
        )
);
drop database Ecommerce;
create database Ecommerce;

#1st table
create table product_info(
pr_id integer,
product_name varchar(50) not null
);

insert into product_info(pr_id,product_name) values(1001,'Blog'),
(1002,'facebook'),
(1003,'Eduction');

select * from product_info;

create database likes;

#2nd table
create table product_info_likes(
user_id integer not null,
pr_id integer not null,
liked_date date,
no_of_likes integer
);

insert into product_info_likes(user_id,Pr_id,liked_date,no_of_likes) values('1','1001','2023-08-19','10'),
('2','1002','2023-08-18','0'),
('3','1003','2023-08-17','20');

select * from product_info_likes;

select pr_id from product_info_likes where no_of_likes='0';

SELECT column1, column2 FROM table1, table2 WHERE column2='value';



	




