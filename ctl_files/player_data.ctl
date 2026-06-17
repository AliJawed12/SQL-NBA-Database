LOAD DATA
INFILE itc_341_player_data.txt
REPLACE INTO TABLE Players
FIELDS TERMINATED BY ','  OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(PlayerId,FirstName,LastName,TeamKey,Points,Assists,Rebounds,Turnovers,Steals,Blocks)