-- Batting Stats Overall analysis****

-- Finding duplicate records:
SELECT Player, Runs, count(*) from `batting stats overall`
group by Player
having count(*)>=1;
-- No Duplicate records

-- Top 5 highest % of runs scored by batsman in boundaries
SELECT Player, `% Runs in Boundaries` from `batting stats overall`
group by Player
order by `% Runs in Boundaries` desc
limit 5;

-- Chris Gayle has scored most number of runs in boundaries i.e. around 72% among all batsmans.
 
 -- Top 5 batsman who has highest Strike Rate among all batsmans.
 SELECT Player, Runs, SR from `batting stats overall`
 group by Player
 order by SR desc
 limit 5;
 
 -- Shahid Afridi has the highest strike rate among all batsman in t20 world cup
 
 -- Find bottom 5 batsman who has least strike rate among all batsmans.
 
  SELECT Player, Runs, SR from `batting stats overall`
 group by Player
 order by SR asc
 limit 5;
 
 -- Mushfiqur Rahim has the lowest strike rate among all batsman in t20 world cup.alter
 
-- Filter "batting stats overall" based on the above 500 runs or below 500 runs.

 -- STEP 1: make an extra column of runs scored above 500 and below 500.
 ALTER table `batting stats overall` ADD COLUMN `Runs Scored` varchar (25);
 
 -- update column based on runs scored:
 UPDATE `batting stats overall` 
SET `Runs Scored`= "Above 500 runs"
where Runs>500;
 
  UPDATE `batting stats overall` 
SET `Runs Scored`= "Below 500 runs"
where Runs<500;

-- Finding no. of batsman in top 49 batsman who scored above and below 500 runs

SELECT `Runs Scored`, count(*)
from `batting stats overall`
group by `Runs Scored`;

-- Around 60% of Top 50 batsman has scored above 500 Runs.

-- Find the batsman sorting by average who has scored more than 500 runs:-

SELECT Player, Max(Ave) from `batting stats overall`
where `Runs Scored` = "Above 500 Runs";

-- Virat Kohli(IND) is the top batsman who scored more than 500 runs with highest average.

-- Find the batsman with least average who has scored less than 500 runs:-

SELECT Player, Min(Ave) from `batting stats overall`
where `Runs Scored` = "Below 500 Runs";

-- Umar Akmal (PAK) is the batsman with the least average who has scored less than 500 runs.

-- Find top 3 Players with most number of ducks overall:-

SELECT Player, Ducks from `batting stats overall`
order by Ducks Desc
limit 3;

-- Shahid Afridi (PAK) and TM Dilshan (SL) has the most number of ducks among all batsmans.











 
 

