CREATE TABLE Regions (
  RegionID INT PRIMARY KEY,
  RegionName VARCHAR(100)
);

CREATE TABLE Users (
  UserID INT PRIMARY KEY,
  UserName VARCHAR(100),
  Encrypted_password VARCHAR(250)
  PreferredRegionID INT,
  FOREIGN KEY (PreferredRegionID) REFERENCES Regions(RegionID)
);

CREATE TABLE Posts (
  PostID INT PRIMARY KEY,
  UserID INT,
  RegionID INT,
  Title VARCHAR(200),
  Text TEXT,
  Location VARCHAR(100),
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
);

CREATE TABLE Categories (
  CategoryID INT PRIMARY KEY,
  CategoryName VARCHAR(100)
);
