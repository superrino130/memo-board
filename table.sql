drop table if exists users;
drop table if exists todos;


create table users
(
  id integer primary key,
  userName text
);

create table todos
(
  id integer PRIMARY key,
  users_id integer,
  users_userName text,
  body text,
  created_at
);

insert into users
  (userName)
values
  ("まこと");

insert into users
  (userName)
values
  ("あかり");

insert into users
  (userName)
values
  ("しゅうと");



-- insert into todos
--   (body)
-- values
--   ("コメントっっっっっ")
-- ;


-- insert into todos
--   (body)
-- values
--   ("お寿司が好きですよ")
-- ;



-- insert into todos
--   (body,created_at)
-- values
--   ("コメントっっっっっ", "2020/01/01")
-- ;


-- insert into todos
--   (body,created_at)
-- values
--   ("お寿司が好きですよ", "2020/03/01")
-- ;
