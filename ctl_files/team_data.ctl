LOAD DATA
INFILE itc_341_team_data.txt
REPLACE INTO TABLE Teams
FIELDS TERMINATED BY ','  OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(TeamKey,TeamName,GeneralManger,Coach,FranchisePlayer,Arena)