-- Worldt20bowling stats analysis

-- Shakib Al Hasan has taken most no. of wickets and Mohammand Amir has taken least no. of wickets.

-- Find top 5 list of Bowlers who took 5 wickets in world cup and sort them with respect to their strike rate:-
SELECT Player, SR, 5s from worldt20bowling
where 5s<> 0
order by SR asc
limit 5;

-- Adam Zampa has taken 5 wickets once and whose strike rate is minimum.

-- Find list of top 5 economical bowlers in world t20:-
SELECT Player, Econ from worldt20bowling
order By Econ asc
limit 5;

-- Anrich Nortje has been the most economical among all bowlers.

-- Find list of bottom 5 economical bowlers in world t20
SELECT Player, Econ from worldt20bowling 
order By Econ desc
limit 5;

-- DJ Bravo has been the most economical overall among all bowlers.

-- FILTER the table into 2 tables with respect to no. of matches played above and equal to 15 and below 15 matches played.

-- step 1 make an extra column of matches played.
ALTER table worldt20bowling
add column `Matches Played` varchar(18);

-- now filter table with respect to matches played.
UPDATE worldt20bowling
SET `Matches Played` = "More than or equal to 50 overs bowled"
where Mat>=15;

-- now filter table with respect to matches played less than 15
UPDATE worldt20bowling
SET `Matches Played` = "Less than 50 overs bowled"
where Mat<15;

-- Divide the table 'worldt20bowling' into 'less than 50 overs bowled' and 'more than or equal to 50 overs bowled'

SELECT * FROM worldt20bowling
where `Matches Played` = "Abo";

SELECT * FROM worldt20bowling
where `Matches Played` = "Less than 15";

-- Find list of top 5 bowlers with least average overall from less than 15 matches played?
SELECT Player,Ave, Overs  from lessthan15worldt20bowling
order by Ave asc
limit 5;

-- Anrich Nortje has the least average overall among players who have played less than 15 matches played

-- Find list of top 5 bowlers with least average overall from more than 15 matches played:-
SELECT Player, Ave, Overs from above15orequalworldt20bowling
order by Ave asc
limit 5;

-- Wannindu Hasranga has the least average overall for more than 15 matches played 



