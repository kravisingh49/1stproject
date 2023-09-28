use db2;
select cast('24.423423' AS float);

select DATE(DATE), TIME(date), HOUR(date), month(date), second(date), minute(date) from hero_battles;

USE HERO;

SELECT ROUND(weight, -1)     AS bucket, 

COUNT(*) AS count,

RPAD('', COUNT(*), '*') AS bar 

FROM heroes_information

GROUP BY bucket

ORDER BY bucket;

select replace(name, 'batman', 'batwoman') from heroes_information;

use db2;
SELECT CONCAT('This battle occurred at ', HOUR(date), ' `o clock` ') AS battle_description FROM hero_battles;
use hero;
select* from heroes_information;
select concat(name, ' ' , ' is from ' , publisher, ' books. ') from heroes_information;

