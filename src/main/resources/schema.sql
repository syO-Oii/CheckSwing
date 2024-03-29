DROP TABLE IF EXISTS Profile;

CREATE TABLE Profile
(
    id        INT        PRIMARY KEY,
    name   	  VARCHAR(255)    NOT NULL,
    team	  VARCHAR(255)    NOT NULL,
    birth	  VARCHAR(255)    NOT NULL,
    position  VARCHAR(255)    NOT NULL,
    bnum	  VARCHAR(255)	  NOT NULL
);


DROP TABLE IF EXISTS PitcherStatus;

CREATE TABLE PitcherStatus
(
    id        INT        PRIMARY KEY,
    game	  INT,
	win		  INT,
	lose	  INT,
	hold	  INT,
	save	  INT,
	innings	  DOUBLE,
	hits	  INT,
	bb	  	  INT,
	so	  	  INT
);

DROP TABLE IF EXISTS HitterStatus;

CREATE TABLE HitterStatus
(
    id        INT        PRIMARY KEY,
    game	  INT,
	pa		  INT,
	ab	  	  INT,
	hits	  INT,
	bb	  	  INT
);

