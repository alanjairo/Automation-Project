-- Use this script to set up your Planetarium database: edit at your own risk
-- NOTE: if executing these statements manually, the image data is encoded in base64
-- before being passed into the database: you will need to do this manually or leave it off
-- needed for referential integrity enforcement if executing the queries manually
PRAGMA foreign_keys = ON;

drop table if exists moons;

drop table if exists planets;

drop table if exists users;

create table users(
	id integer primary key,
	username text unique not null check (length(username) <= 30),
	password text not null check (length(password) <= 30)
);

insert into users (username, password) values ('Batman', 'I am the night');
insert into users (username, password) values ('user1', 'password');

create table planets(
	id integer primary key,
	name text not null check (length(name) <= 30),
	ownerId integer not null,
	image blob,
	foreign key(ownerId) references users(id) on delete cascade
);

insert into planets (name, ownerId, image) values ('Earth', 1, ?);
insert into planets (name, ownerId, image) values ('Mars', 1, ?);
insert into planets (name, ownerId, image) values ('ThisNameTakenPlanet', 2, ?);

create table moons(
	id integer primary key,
	name text not null check (length(name) <= 30),
	myPlanetId integer not null,
	image blob,
	foreign key(myPlanetId) references planets(id) on delete cascade
);

insert into moons (name, myPlanetId, image) values ('Luna', 1, ?);
insert into moons (name, myPlanetId, image) values ('Titan', 2, ?);
insert into moons (name, myPlanetId, image) values ('ThisNameTakenMoon', 3, ?);
insert into moons (name, myPlanetId, image) values ('AnotherMoon', 2, ?);
