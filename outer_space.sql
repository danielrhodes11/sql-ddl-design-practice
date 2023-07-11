-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE galaxies
(
  GalaxyID SERIAL PRIMARY KEY,
  GalaxyName TEXT NOT NULL
);

CREATE TABLE stars
(
  StarID SERIAL PRIMARY KEY,
  StarName TEXT NOT NULL,
  GalaxyID INT,
  FOREIGN KEY (GalaxyID) REFERENCES galaxies(GalaxyID)
);

CREATE TABLE planets
(
  PlanetID SERIAL PRIMARY KEY,
  PlanetName TEXT NOT NULL,
  OrbitalPeriodInYears FLOAT NOT NULL,
  StarID INT,
  FOREIGN KEY (StarID) REFERENCES stars(StarID)
);

CREATE TABLE moons
(
  MoonID SERIAL PRIMARY KEY,
  MoonName TEXT NOT NULL,
  PlanetID INT,
  FOREIGN KEY (PlanetID) REFERENCES planets(PlanetID)
);

-- unsure if datatable needs to be updated as well based on assignment
INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy, moons)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way', '{"The Moon"}'),
  ('Mars', 1.88, 'The Sun', 'Milky Way', '{"Phobos", "Deimos"}'),
  ('Venus', 0.62, 'The Sun', 'Milky Way', '{}'),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', '{}'),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way', '{}');