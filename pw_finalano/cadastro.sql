DROP DATABASE IF EXISTS ProjetoPW;

CREATE DATABASE ProjetoPW;

USE ProjetoPW;

CREATE TABLE IF NOT EXISTS Cadastro(
    Username varchar(50),
    Email varchar(50),
    Senha varchar(50),
);

CREATE TABLE IF NOT EXISTS Posts(
    ID_Post int(5),
    ID_Usuario int(5),
    Assunto Text,
    URL_midia text,
    Data_criacao timestamp default current_timestamp,
    Data_update timestamp default current_timestamp ON UPDATE CURRENT_TIMESTAMP,
    Visibilidade VARCHAR(20) DEFAULT 'public',
    Cont_like int default 0,
    Cont_comment int default 0,
    Cont_compartilhamento int default 0,
    Post_delete boolean default false,
    Reference_post_id int REFERENCES Posts(id)

);