Задание #145
Составной индекс с сортировкой
Создайте индекс idx_lesson_date_classroom_desc для таблицы Lessons, включающий столбцы lesson_date (по возрастанию) и classroom (по убыванию).

CREATE INDEX idx_lesson_date_classroom_desc ON Lessons (lesson_date ASC , classroom DESC );