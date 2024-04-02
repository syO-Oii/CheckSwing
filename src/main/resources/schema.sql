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
    id        	INT        PRIMARY KEY,
    game	  	INT,
    gs		  	INT,
    gr		  	INT,
    gf		  	INT,
	win		  	INT,
	lose	  	INT,
	hold	  	INT,
	save	  	INT,
	innings	  	DECIMAL(5,2),
	er			INT,
	runs		INT,
	rra			DECIMAL(5,2),
	tbf			INT,
	hits		INT,
	doubleHits	INT,
	tripleHits	INT,
	homerun	  	INT,
	bb	  	  	INT,
	hp		  	INT,
	ib		  	INT,
	so		  	INT,
	rob		  	INT,
	bk		  	INT,
	wp		  	INT,
	era		  	DECIMAL(5,2)
);

DROP TABLE IF EXISTS HitterStatus;

CREATE TABLE HitterStatus
(
    id           INT        PRIMARY KEY,
    game         INT,
    pa           INT,
    epa          INT,
    ab           INT,
    runs         INT,
    hits         INT,
    doubleHits   INT,
    tripleHits   INT,
    homerun      INT,
    tb           INT,
    rbi          INT,
    sb           INT,
    cs           INT,
    bb           INT,
    hp           INT,
    ib           INT,
    so           INT,
    gdp          INT,
    sh           INT,
    sf           INT,
    avg          DECIMAL(4,3),
    obp          DECIMAL(4,3),
    slg          DECIMAL(4,3),
    ops          DECIMAL(4,3)
);

