DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league


CREATE TABLE teams
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT NOT NULL,
    color TEXT NOT NULL
);

CREATE TABLE goals
(
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES player,
    game_id INTEGER REFERENCES game
);

CREATE TABLE game
(
    id SERIAL PRIMARY KEY,
    goals_id INTEGER REFERENCES goals,
    referee_id INTEGER REFERENCES referee
);

CREATE TABLE referee
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
);


CREATE TABLE player
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    team_id INTEGER REFERENCES teams,
    goals_scored_id INTEGER REFERENCES goals
)