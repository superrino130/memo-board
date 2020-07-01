drop table if exists todos;

create table todos
(
  id integer PRIMARY key,
  body text,
  created_at
);

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
