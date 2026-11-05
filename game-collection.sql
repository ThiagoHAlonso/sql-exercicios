CREATE DATABASE game_collection
CHARSET utf8mb4 
COLLATE utf8mb4_unicode_ci;

use game_collection;

create table games(
	id_game int not null auto_increment,
    title varchar(30) not null,
    publisher varchar(20) not null default "Não Informado",
    gender varchar(20) not null default "Não Informado",
    year_of year not null,
    primary key (id_game)
);

insert into games (title, publisher, gender, year_of) values
("Super Mario Bros", "Nintendo", "Plataforma", 1985),
("Super Castlevania 4", "Konami", "Plataforma", 1991),
("Resident Evil", default, default, 1996),
("Resident Evil 2", default, default, 1998),
("Assassin's Creed", "Ubisoft", "Mundo Aberto", "2007"),
("Halo: Combat Envolved", "Microsoft", "FPS", "2001"),
("Super Mario Sunshine", "Nintendo", default, "2002"),
("Enduro", "Activision", "Corrida", "1983"),
("Uncharted: Drake's Fortune", "Naughty Dog", "Aventura", "2007"),
("Metal Gear Solid", "Konami", "Stealth", "1998"),
("Silent Hill", "Konami", "Survivor Horror", "1998"),
("Ghost of Tsushima", "Sucker Punch", "Mundo Aberto", "2020");

create table players(
	id_player int not null auto_increment,
    p_name varchar(50) not null,
    fav_game int,
    primary key (id_player),
    foreign key (fav_game) references games(id_game)
);

insert into players (p_name, fav_game) values
("Joaquim José", 3),
("Maria Antônia", 1),
("Francisco Rodolfo", 5),
("Luzia Josefa", 10),
("Ana Lúcia", 10),
("Paulo Jorge", null),
("Regina Claudia", null);

select * from games, players;