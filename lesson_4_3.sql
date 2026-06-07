--Количество исполнителей в каждом жанре.
SELECT g.name AS genre_name, COUNT(DISTINCT e.executor_id)
FROM genre g 
JOIN executorgenre eg ON g.genre_id = eg.genre_id 
JOIN executor e ON eg.executor_id = e.executor_id
GROUP BY g.genre_id;
--Количество треков, вошедших в альбомы 2019–2020 годов.
select count(distinct t.tracks_id)
from tracks t
join albums a on a.album_id = t.albums_id 
where a.year_of_manufacture > '2019.01.01'and  a.year_of_manufacture <'2020.12.31'; 
--Средняя продолжительность треков по каждому альбому.
select distinct(a.name), 
AVG(t.duration )
from albums a
join tracks t on t.albums_id = a.album_id
group by a.name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
select*from executor e
join albumexecutor ae on e.executor_id = ae.executor_id 
join albums a on a.album_id =ae.album_id 
where not( a.year_of_manufacture >='2020.01.01' and a.year_of_manufacture <='2020.12.31');
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c."name"
from collection c 
join trackscollection t on t.collection_id = c.collection_id 
join tracks t2 on t2.tracks_id = t.traks_id 
join albums a on t2.albums_id = a.album_id 
join albumexecutor a2 on a2.album_id = a.album_id 
join executor as e on e.executor_id = a2.executor_id 
where e.name ='Король и Шут';
