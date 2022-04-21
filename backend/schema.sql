pragma foreign_keys = on; -- disabled by default on SQLite
  
create table Users(
  user_id integer primary key autoincrement,
  username varchar unique,
  email varchar,
  password varchar
);

create table Trips(
  trip_id integer primary key autoincrement,
  start_date date,
  end_date date,
  user_id integer,
  foreign key (user_id) references Users(user_id)
    on delete cascade on update cascade
);

create table Photos(
  photo_id integer primary key autoincrement,
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

insert into Trips(start_date, end_date, user_id) values
  ('1998-02-04', '1998-03-05', 1),
  ('2001-05-04', '2002-01-01', 1),
  ('2016-12-12', '2017-12-12', 1),
  ('2011-11-11', '2011-11-16', 1),
  ('2022-01-01', '2022-01-04', 1);

insert into Destinations values
  (42, -12.12, '1998-02-04', '23:59:59', null),
  (42.72, -12.13, '1998-02-06', '23:59:59', null),
  (42.92, -12.13, '1998-02-06', '23:59:59', null),
  -- Paris, France
  (48.856613, 2.352222, '2012-12-12', '12:12:12', null),
  -- Frankfurt, Germany
  (50.116667, 8.683333, '2012-12-13', '12:12:12', null),
  -- Tokyo, Japan
  (35.652832, 139.839478, '2011-11-11', '11:11:11', null),
  -- Mt. Fuji, Japan
  (35.363602, 138.726379, '2011-11-12', '11:11:11', null),
  -- Hakone, Japan
  (35.183333, 139.033333, '2011-11-13', '11:11:11', null),
  -- Nara, Japan
  (34.68505, 135.80485, '2011-11-14', '11:11:11', null),
  -- Osaka, Japan
  (34.672314, 135.484802, '2011-11-15', '11:11:11', null),
  -- Kyoto, Japan
  (35.011665, 135.768326, '2011-11-16', '11:11:11', null),
  -- Compton, CA
  (33.896667, -118.225, '2022-01-01', '11:11:11', null),
  -- Fresno, CA
  (36.75, -119.766667, '2022-01-02', '11:11:11', null),
  -- Merced, CA
  (37.3, -120.483333, '2022-01-03', '11:11:11', null),
  -- Yosemite, CA
  (37.7425, -119.5375, '2022-01-04', '11:11:11', null);

insert into TripDestinations values
  (1, 42, -12.12),
  (1, 42.72, -12.13),
  (1, 42.92, -12.13),
  (2, 48.856613, 2.352222),
  (2, 50.116667, 8.683333),
  (4, 35.652832, 139.839478),
  (4, 35.363602, 138.726379),
  (4, 35.183333, 139.033333),
  (4, 34.68505, 135.80485),
  (4, 34.672314, 135.484802),
  (4, 35.011665, 135.768326),
  (5, 33.896667, -118.225),
  (5, 36.75, -119.766667),
  (5, 37.3, -120.483333),
  (5, 37.7425, -119.5375);

insert into Photos values
  (1, 'Clowns at the Circus', 'https://donttrythisathome.clown/196b3/98/02/12', '1998-02-12'),
  (2, 'Capybaras are cute', 'https://cpaps.deadext/4326b7dkk9/01/09/06', '2001-09-06');

insert into DestinationPhotos values
  (42.72, -12.13, 1),
  (42, -12.12, 2);
