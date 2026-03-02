Задание #58 Добавить отзыв от George Clooney
Добавить отзыв с рейтингом 5 на жилье, находящиеся по адресу "11218, Friel Place, New York", от имени "George Clooney"                                                                                                                                                              В качестве первичного ключа (id) укажите количество записей в таблице + 1.                                                   Резервация комнаты, на которую вам нужно оставить отзыв, уже была сделана, нужно лишь ее найти.
#SELECT id   
#FROM Users
#WHERE name = 'George Clooney';


#SELECT id  
#FROM Rooms
#WHERE address = '11218, Friel Place, New York';


#SELECT id  
#FROM Reservations
#WHERE user_id = 2 AND room_id = 1;


#SELECT COUNT(id)
#FROM  Reviews;
INSERT INTO Reviews (id, reservation_id, rating)
VALUES (23, 2, 5);
