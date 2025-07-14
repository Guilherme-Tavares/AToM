USE rpg_game;

-- Usuários
INSERT INTO usuario(nome, licenca)
	VALUES('Guilherme Tavares', '788456892134568');
INSERT INTO usuario(nome, licenca)
	VALUES('Joaquim Cunha', '786598451234587');
INSERT INTO usuario(nome, licenca)
	VALUES('Felipe Amaral', '558467894412354');
INSERT INTO usuario(nome, licenca)
	VALUES('Ítalo Teixeira', '988416658422354');
INSERT INTO usuario(nome, licenca)
	VALUES('Anypher Franco', '448321655478984');

-- Itens
INSERT INTO item(nome, tipo, valor, descricao)
	VALUES('Folha de Carvalho Antigo', 'Consumível', 3,
    'A folha de um carvalho velho com propriedades medicinais. Auxilia no tratamento de feridas.');
INSERT INTO item(nome, tipo, valor, descricao)
	VALUES('Brilho da Noite', 'Consumível', 9,
    'Uma flor embrumada no brilho violeta que ilumina a noite. Murcha quando o Sol toca a terra. Ajuda na recuperação do fôlego místico.');
INSERT INTO item(nome, tipo, valor, descricao)
	VALUES('Pó de Neblina', 'Consumível', 5,
    'Pequenos grãos cristalizados da neblina que embruma o bosque. O toque esfria as mãos. Faz diminuir o cansaço.');
INSERT INTO item(nome, tipo, descricao)
	VALUES('Pedra', 'Arremesável',
    'Uma pedra pequena encontrada nas ruínas da floresta. Pode ser arremessada.');
INSERT INTO item(nome, tipo, valor, descricao)
	VALUES('Espada Longa', 'Arma', '4',
    'Uma espada longa comum. A guarda da lâmina revela uma rachadura que se estende até o pomo.');
    
-- Localidades
INSERT INTO localidade(nome, descricao)
	VALUES('Torre Caída', 'A base da torre empilha blocos rochosos. O musgo cresce nas frestas por onde a luz invade.');
INSERT INTO localidade(nome, descricao)
	VALUES('Ruínas do Templo', 'As colunas desafiam a natureza com suas últimas forças, sustentando os andares do templo. Algo espreita na escuridão.');
INSERT INTO localidade(nome, descricao)
	VALUES('Rua Torta', 'O caminho se perde na vegetação. As pontas dos marcadores soterrados tentam guiar a rota');
INSERT INTO localidade(nome, descricao)
	VALUES('Arredores do Bosque', 'As árvores parecem desejar o lugar conquistado pelos escombros da criação humana. A grama percorre paredes e vértices.');
INSERT INTO localidade(nome, descricao)
	VALUES('Local 5', 'Descrição do Local 5');

-- Itens em localidades
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade)
	VALUES(3, 1, 2);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item)
	VALUES(4, 3);

-- Personagens
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade)
	VALUES(1, 'Sieg Strife', 'm', 'Humano', 'Guerreiro', '6', '1200', '15', 3);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade)
	VALUES(3, 'Legolas', 'm', 'Elfo', 'Caçador', '9', '1600', '23', 4);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, fk_id_localidade)
	VALUES(4, 'Garrick Strong', 'm', 'Humano', 'Guerreiro', 1);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade)
	VALUES(2, 'Sir Gimli', 'm', 'Anão', 'Cavaleiro', '7', '1318', '11', 2);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, fk_id_localidade)
	VALUES(2, 'Amira', 'f', 'Meio-elfo', 'Clérigo', 1);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade)
	VALUES(5, 'Havok', 'm', 'Humano', 'Feiticeiro', '12', '1840', '20', 2);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade)
	VALUES(1, 'Liz Loneflin', 'f', 'Humano', 'Feiticeiro', '8', '1425', '14', 5);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade)
	VALUES(3, 'Nivolo', 'm', 'Anão', 'Caçador', '7', '1423', '12', 5);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade)
	VALUES(4, 'Ryveera', 'f', 'Elfo', 'Piromante', '6', '1200', '15', 3);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade)
	VALUES(5, 'Doqhan', 'm', 'Meio-elfo', 'Ladrão', '11', '1800', '19', 4);
    
-- NPCs
INSERT INTO npc(nome, fk_id_localidade)
	VALUES('Líria, a Menina Perdida', 3);
INSERT INTO npc(nome, fk_id_localidade)
	VALUES('Guerreiro Desfalecido', 2);
    
-- Missões
INSERT INTO missao(nome, descricao, recompensa_experiencia, fk_id_npc)
	VALUES('Missão 1', 'Descrição da Missão 1', 500, 1);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc)
	VALUES('Missão 2', 'Descrição da Missão 2', 1500, 3, 2);
    
-- Itens em missões
INSERT INTO item_missao(fk_id_missao, fk_id_item)
	VALUES(1, 2);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade)
	VALUES(2, 3, 3);
    
-- Chefes
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade)
	VALUES('Chefe 1', 1000, 2);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade)
	VALUES('Chefe 2', 2500, 4);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade)
	VALUES('Chefe 3', 3800, 5);
    
-- Inventários
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(30, 1);
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(27, 6);
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(40, 8);
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(35, 2);
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(28, 4);
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(32, 3);
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(28, 5);
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(30, 10);
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(41, 7);
INSERT INTO inventario(capacidade, fk_id_personagem)
	VALUES(37, 9);
    
-- Itens em inventários
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade)
	VALUES(2, 1, 5);
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade)
	VALUES(2, 5, 1);
    
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade)
	VALUES(1, 1, 3);
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade)
	VALUES(1, 5, 1);
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade)
	VALUES(1, 2, 1);
    
-- Missões em personagens
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao)
	VALUES(1, 1, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao)
	VALUES(4, 1, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao)
	VALUES(3, 2);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao)
	VALUES(1, 2);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao)
	VALUES(8, 1, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao)
	VALUES(6, 1, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao)
	VALUES(9, 2, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao)
	VALUES(10, 1);
    
-- Chefes em personagens
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe)
	VALUES(2, 1, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe)
	VALUES(1, 2, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe)
	VALUES(1, 3);
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe)
	VALUES(4, 1, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe)
	VALUES(5, 1, 'Derrotado');