CREATE TABLE Players (
  PlayerID int,
  FirstName varchar(15),
  LastName varchar(20),
  TeamKey varchar(3),
  Points double(3,1),
  Assists double(3,1),
  Rebounds double(3,1),
  Turnovers double(3,1),
  Steals double(3,1),
  Blocks double(3,1),
  Primary Key (PlayerID),
  Foreign Key (TeamKey) references Teams(TeamKey)
);

Create Table Teams (
  TeamKey varchar(3),
  TeamName varchar(25),
  GeneralManager varchar(25),
  Coach varchar(20),
  FranchisePlayer int Null,
  Arena varchar(30),
  Primary Key (TeamKey)
  Foreign Key (FranchisePlayer) references Players(PlayerID)
);

Create Table Accolades (
  Id int, 
  Accolade varchar(50),
  Foreign Key (Id) references Players(PlayerID)

  -- Should I make PlayerName var char, or will it be trigger when, id reference it also grabs name from player and sets it?
);


-- Game relationship???