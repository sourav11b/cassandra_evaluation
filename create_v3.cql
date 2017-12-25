CREATE  KEYSPACE IF NOT EXISTS evaluation WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };



DROP TABLE IF EXISTS evaluation.flights_v2;  

CREATE TABLE evaluation.flights_v2(
     id                  INT ,
     year                INT,
     day_of_month        INT,
     fl_date             TIMESTAMP,
     airline_id          INT,
     carrier             VARCHAR,
     fl_num              INT,
     origin_airport_id   INT,
     origin              VARCHAR,
     origin_city_name    VARCHAR,
     origin_state_abr    VARCHAR,
     dest                VARCHAR,
     dest_city_name      VARCHAR,
     dest_state_abr      VARCHAR,
     dep_time            timestamp,
     arr_time            timestamp,
     actual_elapsed_time timestamp,
     air_time            timestamp,
     distance            INT,
  PRIMARY KEY (origin,fl_date,dep_time,fl_num,id)
) WITH CLUSTERING ORDER BY (fl_date ASC,dep_time ASC);

use evaluation;
