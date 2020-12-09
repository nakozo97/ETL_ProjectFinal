CREATE TABLE happinessRegion (
    country VARCHAR(255),
    region VARCHAR(255),
	PRIMARY KEY (country)
);

SELECT * FROM happinessRegion;

CREATE TABLE happinessYear (
    country VARCHAR(100),
    region VARCHAR(100),
    happiness_rank INT,
    happiness_score REAL,
    gdp REAL,
    health REAL,
    freedom REAL,
    trust_govt_corruption REAL,
    generosity REAL,
    happiness_year INT,
	FOREIGN KEY (country) REFERENCES happinessRegion(country)
);

SELECT * FROM happinessYear;

CREATE TABLE fifa (
    id INT, 
	rank INT,
    country_full VARCHAR(100),
    confederation VARCHAR(100),
    rank_date VARCHAR(100),
	FOREIGN KEY (country_full) REFERENCES happinessRegion(country)
);

SELECT * FROM fifa;