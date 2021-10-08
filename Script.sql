-- выборка данных

use test_db;

select name, bday
from users;

select * from users; -- выборка всех столбцов

select name as username from users;

select * from users where id=2 or id=3;

select * from  users
where  id between 2 and 4
order by bday desc; -- по дефолту по возрастанию, desk по убыванию

select name from users group by name;

-- добавление данных
insert  into users(bday,name)
values('2004-05-14','Valya'),('1987-02-15','Nikolay');

-- редактирование или обновление

update users set
name = 'Artsem',
bday = '1998-05-12'
where id = 3;

delete from users where date_sub(now(),interval 18 year) <=bday ;

