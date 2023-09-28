use hero;
select*,
case
when race= 'human' then 1
else '0'
end as HUMAN from heroes_information;

SELECT name, weight,
ROW_NUMBER() OVER (ORDER BY weight DESC) AS 'rank'
FROM heroes_information
ORDER BY weight DESC;

select race from heroes_information
group by race
having avg(height)> 100 and avg(weight)> 150;

SELECT SUBSTRING(name, 1, 1) AS first_letter, COUNT(*) AS frequency
FROM heroes_information
GROUP BY SUBSTRING(name, 1, 1)
ORDER BY first_letter;







