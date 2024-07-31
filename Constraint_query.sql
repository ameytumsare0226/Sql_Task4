create table customer(
	id int primary key,
	name varchar(50),
	age int check (age<=78)                --'check'Constraint 
)
insert into customer values (1,'name1',43),
	(2,'name2',58),
	(3,'name3',28)

select * from customer

insert into customer values (4,'name4',80)             --gives an error

alter table customer add column pay_mode varchar not null default 'Cash'

alter table customer add constraint pay_mode check ( pay_mode not in ('a1','b1','check'))     
update customer set pay_mode = 'a1' where id =1                  --gives an error

update customer set pay_mode = 'b1' where id =2                  --gives an error

update customer set pay_mode = 'check' where id =3               --gives an error