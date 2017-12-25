CREATE  KEYSPACE IF NOT EXISTS evaluation WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };



DROP TABLE IF EXISTS evaluation.flights_temp;
CREATE TABLE evaluation.flights_temp (
           	  	ID int PRIMARY KEY,             	  	YEAR int,      	  	             	  	DAY_OF_MONTH int,             	  	FL_DATE timestamp,             	  	AIRLINE_ID int,             	  	CARRIER varchar,             	  	FL_NUM int,             	  	ORIGIN_AIRPORT_ID int,             	  	ORIGIN varchar,             	  	ORIGIN_CITY_NAME varchar,             	  	ORIGIN_STATE_ABR varchar,             	  	DEST varchar,             	  	DEST_CITY_NAME varchar,             	  	DEST_STATE_ABR varchar,             	  	DEP_TIME timestamp,             	  	ARR_TIME timestamp,             	  	ACTUAL_ELAPSED_TIME timestamp,             	  	AIR_TIME timestamp,             	  	DISTANCE int);

use evaluation;

describe table flights_temp;
