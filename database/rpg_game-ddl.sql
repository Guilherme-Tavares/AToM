CREATE DATABASE rpg_game;

USE rpg_game;

CREATE TABLE usuario
(
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    licenca VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE item
(
	id_item INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    valor INT NOT NULL DEFAULT 0,
    descricao TEXT NOT NULL
);

CREATE TABLE localidade
(
	id_localidade INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE item_localidade
(
	id_item_localidade INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_localidade INT NOT NULL,
    FOREIGN KEY(fk_id_localidade) REFERENCES localidade(id_localidade),
    fk_id_item INT NOT NULL,
    FOREIGN KEY(fk_id_item) REFERENCES item(id_item),
    quantidade INT NOT NULL DEFAULT 1,
    disponivel BOOL NOT NULL DEFAULT TRUE
);

CREATE TABLE personagem
(
	id_personagem INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_usuario INT NOT NULL,
    FOREIGN KEY(fk_id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE,
    nome varchar(100) NOT NULL,
    genero char(1) NOT NULL,
    raca varchar(20) NOT NULL,
    classe varchar(20) NOT NULL,
    nivel INT NOT NULL DEFAULT 1,
    experiencia INT NOT NULL DEFAULT 0,
    dinheiro INT NOT NULL DEFAULT 0,
    fk_id_localidade INT NOT NULL DEFAULT 1,
    FOREIGN KEY(fk_id_localidade) REFERENCES localidade(id_localidade)
);

CREATE TABLE npc
(
	id_npc INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    fk_id_localidade INT NOT NULL,
    FOREIGN KEY(fk_id_localidade) REFERENCES localidade(id_localidade)
);

CREATE TABLE missao
(
	id_missao INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    recompensa_experiencia INT NOT NULL DEFAULT 0,
    recompensa_dinheiro INT NOT NULL DEFAULT 0,
    fk_id_npc INT NOT NULL,
    FOREIGN KEY(fk_id_npc) REFERENCES npc(id_npc)
);

CREATE TABLE item_missao
(
	id_item_missao INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_missao INT NOT NULL,
    FOREIGN KEY(fk_id_missao) REFERENCES missao(id_missao),
    fk_id_item INT NOT NULL,
    FOREIGN KEY(fk_id_item) REFERENCES item(id_item),
    quantidade INT NOT NULL DEFAULT 1
);

CREATE TABLE chefe
(
	id_chefe INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    recompensa_experiencia INT NOT NULL DEFAULT 0,
    fk_id_localidade INT NOT NULL,
    FOREIGN KEY(fk_id_localidade) REFERENCES localidade(id_localidade)
);

CREATE TABLE inventario
(
	id_inventario INT PRIMARY KEY AUTO_INCREMENT,
    capacidade INT NOT NULL DEFAULT 30,
    fk_id_personagem INT NOT NULL,
    FOREIGN KEY(fk_id_personagem) REFERENCES personagem(id_personagem)
);

CREATE TABLE item_inventario
(
	id_item_inventario INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_inventario INT NOT NULL,
    FOREIGN KEY(fk_id_inventario) REFERENCES inventario(id_inventario),
    fk_id_item INT NOT NULL,
    FOREIGN KEY(fk_id_item) REFERENCES item(id_item),
    quantidade INT NOT NULL DEFAULT 1
);

CREATE TABLE missao_personagem
(
	id_missao_personagem INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_personagem INT NOT NULL,
    FOREIGN KEY(fk_id_personagem) REFERENCES personagem(id_personagem),
    fk_id_missao INT NOT NULL,
    FOREIGN KEY(fk_id_missao) REFERENCES missao(id_missao),
    status_missao VARCHAR(20) NOT NULL DEFAULT 'Aceita'
);

CREATE TABLE chefe_personagem
(
	id_chefe_personagem INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_personagem INT NOT NULL,
    FOREIGN KEY(fk_id_personagem) REFERENCES personagem(id_personagem),
    fk_id_chefe INT NOT NULL,
    FOREIGN KEY(fk_id_chefe) REFERENCES chefe(id_chefe),
    status_chefe VARCHAR(20) NOT NULL DEFAULT 'Vivo'
);
