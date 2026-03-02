Задание #42 Время, проведённое в школе
Сколько времени обучающийся будет находиться в школе, учась со 2-го по 4-ый уч. предмет?            
Используйте конструкцию "as time" для указания разницы во времени. Это необходимо для корректной проверки.                                                                                                                                                                   Результат должен быть в формате HH:MM:SS                                                                                                  Поля в результирующей таблице:  time
SELECT DISTINCT TIMEDIFF(
                        (SELECT end_pair
                          FROM Timepair
  		          WHERE id = '4'),
                         (SELECT start_pair
                          FROM Timepair
                          WHERE id = '2')) AS time
FROM Timepair;
