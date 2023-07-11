CREATE TABLE Doctors (
  DoctorID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Specialization VARCHAR(50)
);

CREATE TABLE Patients (
  PatientID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Insurance CHAR (20),
  Gender CHAR(1)
  Birthday DATE
);

CREATE TABLE Visits (
  VisitID INT PRIMARY KEY,
  PatientID INT,
  DoctorID INT,
  VisitDate DATE,
  Notes TEXT,
  FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
  FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Diseases (
  DiseaseID INT PRIMARY KEY,
  DiseaseName VARCHAR(100),
  Description TEXT
);

CREATE TABLE Diagnoses (
  DiagnosisID INT PRIMARY KEY,
  VisitID INT,
  DiseaseID INT,
  FOREIGN KEY (VisitID) REFERENCES Visits(VisitID),
  FOREIGN KEY (DiseaseID) REFERENCES Diseases(DiseaseID)
);
