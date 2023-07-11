CREATE TABLE Teams (
  TeamID INT PRIMARY KEY,
  TeamName VARCHAR(100),
  CurrentRank INT
  City VARCHAR(100)
);

CREATE TABLE Players (
  PlayerID INT PRIMARY KEY,
  PlayerName VARCHAR(100),
  TeamID INT,
  Birthday DATE,
  FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

CREATE TABLE Matches (
  MatchID INT PRIMARY KEY,
  Home_team_ID INT,
  Away_team_ID INT,
  Location VARCHAR(100),
  Date DATE,
  RefereeID INT,
  FOREIGN KEY (Home_team_ID) REFERENCES Teams(TeamID),
  FOREIGN KEY (Away_team_ID) REFERENCES Teams(TeamID)
);

CREATE TABLE Goals (
  GoalID INT PRIMARY KEY,
  PlayerID INT,
  MatchID INT,
  FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
  FOREIGN KEY (MatchID) REFERENCES Matches(MatchID)
);

CREATE TABLE Referees (
  RefereeID INT PRIMARY KEY,
  RefereeName VARCHAR(100)
);

CREATE TABLE Seasons (
  SeasonID INT PRIMARY KEY,
  StartDate DATE,
  EndDate DATE
);
