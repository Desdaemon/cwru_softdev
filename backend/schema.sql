pragma foreign_keys = on; -- disabled by default on SQLite
  
create table Users(
  user_id integer not null unique primary key autoincrement,
  username varchar unique,
  email varchar,
  password varchar
);

create table Trips(
  trip_id integer not null unique primary key autoincrement,
  start_date date,
  end_date date,
  user_id integer,
  foreign key (user_id) references Users(user_id)
    on delete cascade on update cascade
);

create table Photos(
  photo_id integer not null unique primary key autoincrement,
  name varchar,
  url varchar,
  date_taken date
);

create table Destinations(
  lat double not null,
  lon double not null,
  visit_date date,
  visit_time time,
  description text,
  primary key (lat, lon)
);

-- Relationships

create table TripDestinations(
  trip_id integer not null,
  lat double not null,
  lon double not null,
  primary key (trip_id, lat, lon),
  foreign key (trip_id) references Trips(trip_id)
    on delete cascade on update cascade,
  foreign key (lat, lon) references Destinations(lat, lon)
    on delete cascade on update cascade
);

create table DestinationPhotos(
  lat double not null,
  lon double not null,
  photo_id integer not null,
  primary key (lat, lon, photo_id),
  foreign key (lat, lon) references Destinations(lat, lon)
    on delete cascade on update cascade,
  foreign key (photo_id) references Photos(photo_id)
    on delete cascade on update cascade
);

-- Mock data

insert into Users values
  (1, 'foo', 'foo@foo.com', 'hunter2'),
  (2, 'bar', 'bar@foo.com', 'hunter3');

insert into Trips values
  (1, '1998-02-04', '1998-03-05', 2),
  (2, '2001-05-04', '2002-01-01', 1);

insert into Destinations values
  (42, -12.12, '1998-02-04', '23:59:59', null),
  (42.72, -12.13, '1998-02-06', '23:59:59', null),
  (42.92, -12.13, '1998-02-06', '23:59:59', null);

insert into TripDestinations values
  (1, 42, -12.12),
  (1, 42.72, -12.13);

insert into Photos values
  (1, 'Clowns at the Circus', 'https://donttrythisathome.clown/196b3/98/02/12', '1998-02-12'),
  (2, 'Capybaras are cute', 'https://cpaps.deadext/4326b7dkk9/01/09/06', '2001-09-06');

insert into DestinationPhotos values
  (42.72, -12.13, 1),
  (42, -12.12, 2);
