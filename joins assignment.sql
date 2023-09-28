use db2;
select* from db2.hero_battles
left join hero.heroes_information
on heroes_information.name= hero_battles.name;

select* from hero.super_hero_powers
right join db2.hero_battles
on hero_battles.name= super_hero_powers.hero_names;

use hero;
select* from super_hero_powers;

select name from heroes_information
where gender= 'Female'
union
select name from heroes_information
join super_hero_powers
on super_hero_powers.hero_names= heroes_information.name
where `accelerated healing`= true;






