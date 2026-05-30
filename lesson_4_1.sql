insert into Genre 
values (1,'Классическая музыка');

insert into Genre 
values (0,'Современная');

insert into Genre 
values (2,'Народная музыка');   

insert into Genre 
values (5,'Русский рок');


-- классическая 
insert into executor  
values (10, 'Моцарт');

insert into executor  
values (9, 'Бетховен');

insert into executor  
values (8, 'Глюк');
-- русский рок
insert into executor  
values (5, '7б');

-- современные исполнители
insert into executor  
values (121, 'Крид');

-- народные исполнители
insert into executor  
values (12, 'Куртукова');

insert into executor  
values (13, 'Пелагея');

insert into executor  
values (14, 'Надежда Кадышева');

insert into executor  
values (15, 'Отава-Ё');

--заполнение таблицы исполнителей и жанров
insert into executorgenre 
values (2,15);

insert into executorgenre 
values (2,13);

insert into executorgenre 
values (2,14);

insert into executorgenre 
values (0,121);

insert into executorgenre 
values (1,8);

insert into executorgenre 
values (1,10);

--Альбомы

--7Б
insert into albums 
values(1, 'Молодые ветра', '2001.01.01');
insert into albums 
values(2, 'Юбилейный', '2008.01.01');

--моцарт
insert into albums
values(11, 'Mozart Collection', '1789.01.01');
insert into albums
values(12, 'Eine kleine Nachtmusik in G Major, K. 525', '1787.01.01');
insert into albums
values(13, 'The Magic Flute', '1787.01.01');

--крид
insert into albums
values(21, 'Что они знают?', '2020.01.01');
insert into albums
values(22, 'Меньше чем три', '2021.01.01');


--иное
insert into albums 
values(100, 'Новые песни', '1983.01.01');

insert into albums
values (101, 'мои дворы', '1991.01.01');


--Заполнение таблицы альбомы и исполнители
insert into albumexecutor 
values (11, 10);
insert into albumexecutor 
values (12, 10);
insert into albumexecutor 
values (13, 10);

insert into albumexecutor 
values (21, 121);
insert into albumexecutor 
values (22, 121);

insert into albumexecutor 
values (2,5);
insert into albumexecutor 
values (1, 5);


--сборники
insert into collection  
values (1, 'Для души', '2026.01.21');
insert into collection  
values (2, 'Крид', '2025.11.25');

insert into collection  
values (3, 'Весна', '2024.01.01');

insert into collection  
values (123, 'В дорогу', '2020.07.10');
insert into collection  
values (1434, 'Уборка', '2003.11.03');

insert into collection  
values (12, 'Для зала', '2021.02.13');

insert into collection  
values (43, 'Прогулка', '2019.08.17');


--треки
insert into tracks 
values (1, 'время', '01:49', 22);
insert into tracks 
values (2, 'на луну', '02:17', 22);
insert into tracks 
values (3, 'завтра', '03:17', 22);

insert into tracks 
values (5, 'не могу', '03:47', 21);
insert into tracks 
values (6, 'потрачу', '03:03', 21);

insert into tracks 
values (4, 'самая самая', '03:50', 21);

insert into tracks 
values (22, 'молодые ветра', '03:30', 1);
insert into tracks 
values (23, 'кино', '3:38', 1);

--сборники
insert into trackscollection  
values (1,2);
insert into trackscollection  
values (2,2);
insert into trackscollection  
values (3,2);
insert into trackscollection  
values (4,2);
insert into trackscollection  
values (5,2);
insert into trackscollection  
values (6,2);

insert into trackscollection  
values (22,1);
insert into trackscollection  
values (23,1);
--