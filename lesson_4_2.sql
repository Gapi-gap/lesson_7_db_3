select name,duration from tracks 
where duration = (select max(duration) from tracks);

select name from tracks
where duration>'3:30';
--Названия сборников, вышедших в период с 2018 по 2020 годы включительно.
select name from collection as c
where c.year_of_manufacture between '2018.01.01' and '2020.12.31';
--Исполнители, чьё имя состоит из одного слова.
select name from executor e 
WHERE name not like'% %'and name is not null;
--Название треков, которые содержат слова «мой» или «my».
select name from tracks 
where name Like'%мой%' or name Like'%my%';
