Задание #74
Наличие интернета в помещении

SELECT id,
    CASE 
    WHEN has_internet = TRUE THEN 'YES'
    ELSE 'NO'    
    END AS has_internet
FROM Rooms;
