Составной индекс на тип жилья и цену
Создайте индекс idx_type_price для столбцов home_type и price таблицы Rooms.

CREATE INDEX idx_type_price ON Rooms (home_type, price);