create table todos (id serial primary key, title varchar(225) not null, details varchar(1000) null, priority int not null default 1, created_at timestamp not null, completed_at timestamp null);

insert into todos (title, details, priority, created_at) values ('wash the dog', 'use the oatmeal shampoo', 3, now());
insert into todos (title, priority, created_at) values ('cook dinner', 1, now());
insert into todos (title, priority, created_at, completed_at) values ('do not get hit by a car on the way home', 1, now(), NOW() + '20 minutes');
insert into todos (title, details, priority, created_at) values ('read tonights lesson', 'complete assessment and check on submitted projects', 1, now());
insert into todos (title, details, priority, created_at) values ('laundry', 'make sure to wash dirty towels around the house too', 2, now());

select * from todos where completed_at IS NULL;
select * from todos where priority > 1;
update todos set completed_at = now() + '2 hours' where id = 2;
delete from todos where completed_at IS NOT NULL;

