use rpg_game;

-- SELECT, UPDATE, DELETE, INSERT

SELECT * FROM chefe_personagem;

DELETE FROM chefe WHERE id_chefe > 3;

SELECT personagem.nome AS 'Personagem', chefe.nome AS 'Chefe', chefe_personagem.status_chefe AS 'Status' FROM chefe_personagem
INNER JOIN personagem ON chefe_personagem.fk_id_personagem = personagem.id_personagem
INNER JOIN chefe ON chefe_personagem.fk_id_chefe = chefe.id_chefe
WHERE chefe_personagem.status_chefe = 'Derrotado';

SELECT COUNT(fk_id_inventario) AS Jogadores FROM item_inventario
WHERE fk_id_item = 2;

SELECT inventario.fk_id_personagem AS 'ID', personagem.nome AS 'Personagem', item.nome AS 'Item', item_inventario.quantidade AS 'Quantidade' FROM item_inventario
INNER JOIN inventario ON item_inventario.fk_id_inventario = inventario.id_inventario
INNER JOIN personagem ON inventario.fk_id_personagem = personagem.id_personagem
INNER JOIN item ON item_inventario.fk_id_item = item.id_item
WHERE id_item = 2;

SELECT MIN(nivel) FROM personagem;

SELECT * FROM usuario WHERE licenca = "788456892134568";

SELECT * FROM usuario;
ALTER TABLE usuario MODIFY licenca VARCHAR(15) NOT NULL UNIQUE;
UPDATE usuario SET nome = "Guilherme de Nóbrega" WHERE usuario.licenca = "456984562312547";
DELETE usuario.* FROM usuario WHERE usuario.licenca = "456984562312547";

alter table personagem add genero char(1) not null default 'm';
alter table personagem modify genero char(1) not null;

alter table personagem modify fk_id_local INT NOT NULL DEFAULT 1;

SELECT * FROM personagem;