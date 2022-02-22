create type coord as (
    lat decimal,
    lon decimal
);

create table Users (
    user_id serial,
    username varchar,
    email varchar,
    password varchar
);

create table Trips (
    trip_id serial
);
