USE rpg_game;

-- Usuários
INSERT INTO usuario(nome, licenca) VALUES('Guilherme Tavares', '788456892134568');
INSERT INTO usuario(nome, licenca) VALUES('Joaquim Cunha', '786598451234587');
INSERT INTO usuario(nome, licenca) VALUES('Felipe Amaral', '558467894412354');
INSERT INTO usuario(nome, licenca) VALUES('Ítalo Teixeira', '988416658422354');
INSERT INTO usuario(nome, licenca) VALUES('Anypher Franco', '448321655478984');
INSERT INTO usuario(nome, licenca) VALUES('Melissa Vilarins', '123456789012345');
INSERT INTO usuario(nome, licenca) VALUES('Arthur Bittencourt', '234567890123456');
INSERT INTO usuario(nome, licenca) VALUES('Joana Diniz', '345678901234567');
INSERT INTO usuario(nome, licenca) VALUES('Murilo Honório', '456789012345678');
INSERT INTO usuario(nome, licenca) VALUES('Bruna Lisboa', '567890123456789');

-- Itens
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Folha de Carvalho Antigo', 'Consumível', 3, 'A folha de um carvalho velho com propriedades medicinais. Auxilia no tratamento de feridas.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Brilho da Noite', 'Consumível', 9, 'Uma flor embrumada no brilho violeta que ilumina a noite. Murcha quando o Sol toca a terra. Ajuda na recuperação do fôlego místico.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Pó de Neblina', 'Consumível', 5, 'Pequenos grãos cristalizados da neblina que embruma o bosque. O toque esfria as mãos. Faz diminuir o cansaço.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Pedra', 'Arremesável', 0, 'Uma pedra pequena encontrada nas ruínas da floresta. Pode ser arremessada.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Espada Longa', 'Arma', 4, 'Uma espada longa comum. A guarda da lâmina revela uma rachadura que se estende até o pomo.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Elixir da Aurora', 'Consumível', 10, 'Revigora todas as energias ao nascer do sol.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Lança Curta', 'Arma', 7, 'Uma lança leve, usada por caçadores das montanhas.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Escudo de Carvalho', 'Defesa', 6, 'Resistente e firme como as raízes que o originaram.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Amuleto Quebrado', 'Acessório', 2, 'Fragmento de uma relíquia. Ainda pulsa com energia estranha.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Anel do Vórtice', 'Acessório', 12, 'Anel mágico que distorce o tempo ao redor.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Poção de Resistência', 'Consumível', 4, 'Reforça a resistência física por alguns minutos.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Cajado de Vidro', 'Arma', 9, 'Canaliza magia pura. Frágil mas poderoso.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Runa da Visão', 'Acessório', 3, 'Permite ver o invisível por breves instantes.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Livro das Sombras', 'Consumível', 5, 'Contém feitiços esquecidos. Pode ser perigoso de usar.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Flecha Perfurante', 'Arremesável', 2, 'Penetra armaduras leves com facilidade.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Poção de Agilidade', 'Consumível', 6, 'Aumenta temporariamente a velocidade de movimentos.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Máscara de Ferro', 'Defesa', 4, 'Máscara pesada que protege contra ataques mentais.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Tomo Rúnico', 'Consumível', 8, 'Transfere experiência arcana a quem o utiliza.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Tocha', 'Utilitário', 1, 'Ilumina ambientes escuros. Dura pouco tempo.');
INSERT INTO item(nome, tipo, valor, descricao) VALUES('Besta de Pulso', 'Arma', 11, 'Arma rápida e silenciosa, ideal para emboscadas.');

-- Localidades
INSERT INTO localidade(nome, descricao) VALUES('Torre Caída', 'A base da torre empilha blocos rochosos. O musgo cresce nas frestas por onde a luz invade.');
INSERT INTO localidade(nome, descricao) VALUES('Ruínas do Templo', 'As colunas desafiam a natureza com suas últimas forças, sustentando os andares do templo. Algo espreita na escuridão.');
INSERT INTO localidade(nome, descricao) VALUES('Rua Torta', 'O caminho se perde na vegetação. As pontas dos marcadores soterrados tentam guiar a rota');
INSERT INTO localidade(nome, descricao) VALUES('Arredores do Bosque', 'As árvores parecem desejar o lugar conquistado pelos escombros da criação humana. A grama percorre paredes e vértices.');
INSERT INTO localidade(nome, descricao) VALUES('Portão Selado', 'As grandes portas de pedra estão cobertas de inscrições antigas. Um poder invisível impede a passagem.');
INSERT INTO localidade(nome, descricao) VALUES('Gruta das Vozes', 'Sons estranhos ecoam pelas paredes úmidas desta caverna.');
INSERT INTO localidade(nome, descricao) VALUES('Campo das Cinzas', 'Um antigo campo de batalha coberto por restos queimados.');
INSERT INTO localidade(nome, descricao) VALUES('Passagem Antiga', 'Corredores esculpidos à mão, esquecidos pelo tempo.');
INSERT INTO localidade(nome, descricao) VALUES('Fonte de Luar', 'A água dessa fonte brilha sob a lua, dizem ter propriedades místicas.');
INSERT INTO localidade(nome, descricao) VALUES('Câmara de Mármore', 'Uma sala enterrada de colunas brancas e símbolos luminosos.');
INSERT INTO localidade(nome, descricao) VALUES('Bosque Profundo', 'A vegetação densa impede a luz solar de tocar o chão.');
INSERT INTO localidade(nome, descricao) VALUES('Refúgio Esquecido', 'Um abrigo abandonado nas montanhas, silencioso e intacto.');
INSERT INTO localidade(nome, descricao) VALUES('Galeria dos Ecos', 'Vozes antigas guiam os que se atrevem a entrar.');
INSERT INTO localidade(nome, descricao) VALUES('Cemitério dos Reis', 'Lápides imponentes homenageiam figuras esquecidas.');
INSERT INTO localidade(nome, descricao) VALUES('Ponte Rachada', 'A estrutura parece ruir a qualquer momento, mas ainda segura segredos.');

-- Itens em localidades
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(3, 1, 2);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item) VALUES(4, 3);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(1, 2, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(1, 5, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(2, 7, 2);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(2, 4, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(5, 6, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(5, 9, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(6, 10, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(6, 2, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(7, 11, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(7, 6, 2);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(8, 12, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(8, 1, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(9, 13, 2);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(10, 14, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(10, 8, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(11, 15, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(11, 9, 2);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(12, 16, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(12, 3, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(13, 17, 2);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(13, 5, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(14, 18, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(14, 6, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(15, 19, 2);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(15, 10, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(1, 20, 1);
INSERT INTO item_localidade(fk_id_localidade, fk_id_item, quantidade) VALUES(2, 11, 2);

-- Personagens
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(1, 'Sieg Strife', 'm', 'Humano', 'Guerreiro', 6, 1200, 15, 3);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(3, 'Legolas', 'm', 'Elfo', 'Caçador', 9, 1600, 23, 4);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, fk_id_localidade) VALUES(4, 'Garrick Strong', 'm', 'Humano', 'Guerreiro', 1);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(2, 'Sir Gimli', 'm', 'Anão', 'Cavaleiro', 7, 1318, 11, 2);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, fk_id_localidade) VALUES(2, 'Amira', 'f', 'Meio-elfo', 'Clérigo', 1);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(5, 'Havok', 'm', 'Humano', 'Feiticeiro', 12, 1840, 20, 2);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(1, 'Liz Loneflin', 'f', 'Humano', 'Feiticeiro', 8, 1425, 14, 5);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(3, 'Nivolo', 'm', 'Anão', 'Caçador', 7, 1423, 12, 5);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(4, 'Ryveera', 'f', 'Elfo', 'Piromante', 6, 1200, 15, 3);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(5, 'Doqhan', 'm', 'Meio-elfo', 'Ladrão', 11, 1800, 19, 4);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(6, 'Kara Thorne', 'f', 'Humano', 'Cavaleiro', 10, 2000, 25, 6);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(7, 'Vhalok', 'm', 'Anão', 'Piromante', 9, 1750, 18, 7);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(8, 'Elandra', 'f', 'Elfo', 'Feiticeiro', 7, 1600, 14, 8);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(9, 'Thogar', 'm', 'Anão', 'Caçador', 8, 1500, 16, 9);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(10, 'Nyra', 'f', 'Meio-elfo', 'Clérigo', 6, 1350, 12, 10);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(6, 'Borok', 'm', 'Humano', 'Guerreiro', 7, 1450, 13, 11);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(7, 'Seraphine', 'f', 'Humano', 'Feiticeiro', 8, 1580, 17, 12);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(8, 'Kael', 'm', 'Elfo', 'Ladrão', 9, 1700, 15, 13);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(9, 'Yrmir', 'm', 'Anão', 'Cavaleiro', 10, 1850, 20, 14);
INSERT INTO personagem(fk_id_usuario, nome, genero, raca, classe, nivel, experiencia, dinheiro, fk_id_localidade) VALUES(10, 'Mirabel', 'f', 'Humano', 'Clérigo', 11, 1900, 22, 15);

-- NPCs
INSERT INTO npc(nome, fk_id_localidade) VALUES('Líria, a Menina Perdida', 3);
INSERT INTO npc(nome, fk_id_localidade) VALUES('Guerreiro Desfalecido', 2);
INSERT INTO npc(nome, fk_id_localidade) VALUES('Mãe da Neblina', 6);
INSERT INTO npc(nome, fk_id_localidade) VALUES('Ancião Cego', 9);
INSERT INTO npc(nome, fk_id_localidade) VALUES('Mensageiro Escondido', 10);
INSERT INTO npc(nome, fk_id_localidade) VALUES('Feiticeira do Luar', 11);
INSERT INTO npc(nome, fk_id_localidade) VALUES('Sentinela Adormecida', 12);
INSERT INTO npc(nome, fk_id_localidade) VALUES('Coveiro Murmurante', 13);
INSERT INTO npc(nome, fk_id_localidade) VALUES('Guardião Esquecido', 14);
INSERT INTO npc(nome, fk_id_localidade) VALUES('Caçador Errante', 15);

-- Missões
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('Rastro na Névoa', 'Encontre os rastros da garota perdida nos arredores da Rua Torta.', 500, 0, 1);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('A Honra de um Guerreiro', 'Recupere a espada do Guerreiro Desfalecido no templo em ruínas.', 1500, 3, 2);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('Falas do Subsolo', 'Explore a Gruta das Vozes e descubra a origem dos sussurros.', 900, 5, 3);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('Cinzas e Glória', 'Recupere uma relíquia no Campo das Cinzas.', 1300, 8, 4);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('Fonte da Vida', 'Coleta água sagrada da Fonte de Luar.', 800, 6, 5);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('Última Sentinela', 'Acorde a Sentinela Adormecida sem despertar o mal ancestral.', 1800, 12, 6);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('Chaves Rúnicas', 'Obtenha as chaves místicas na Câmara de Mármore.', 1500, 10, 7);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('Segredos dos Mortos', 'Converse com os espíritos no Cemitério dos Reis.', 2000, 0, 8);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('Travessia Proibida', 'Atravessar a Ponte Rachada sem ser visto pelos guardiões.', 1700, 7, 9);
INSERT INTO missao(nome, descricao, recompensa_experiencia, recompensa_dinheiro, fk_id_npc) VALUES('Chamado da Caçada', 'Ajude o Caçador Errante a rastrear uma criatura lendária.', 1900, 11, 10);

-- Itens em missões
INSERT INTO item_missao(fk_id_missao, fk_id_item) VALUES(1, 2);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade) VALUES(2, 3, 3);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade) VALUES(3, 8, 1);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade) VALUES(4, 9, 1);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade) VALUES(5, 10, 1);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade) VALUES(6, 12, 2);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade) VALUES(7, 13, 1);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade) VALUES(8, 14, 1);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade) VALUES(9, 15, 1);
INSERT INTO item_missao(fk_id_missao, fk_id_item, quantidade) VALUES(10, 18, 2);

-- Chefes
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('O Vigia das Ruínas', 1000, 2);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('Golem da Coluna Partida', 2500, 4);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('Arauto do Selamento', 3800, 5);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('Sombra Ancestral', 3000, 6);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('Lorde das Cinzas', 3200, 7);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('Ent de Cristal', 2700, 8);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('Espectro do Luar', 2900, 9);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('Guardião do Abismo', 3500, 10);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('Fera Esquecida', 3400, 11);
INSERT INTO chefe(nome, recompensa_experiencia, fk_id_localidade) VALUES('Lamentador da Galeria', 3600, 12);

-- Inventários
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(30, 1);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(27, 2);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(40, 3);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(35, 4);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(28, 5);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(32, 6);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(28, 7);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(30, 8);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(41, 9);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(37, 10);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(33, 11);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(30, 12);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(36, 13);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(29, 14);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(38, 15);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(34, 16);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(32, 17);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(39, 18);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(37, 19);
INSERT INTO inventario(capacidade, fk_id_personagem) VALUES(30, 20);

-- Itens em inventários
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(1, 1, 3);
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(1, 5, 1);
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(1, 2, 1);

INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(2, 3, 2);
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(2, 5, 1);

INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(6, 10, 1);
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(6, 4, 5);

INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(10, 7, 2);
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(10, 1, 1);

INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(15, 6, 1);
INSERT INTO item_inventario(fk_id_inventario, fk_id_item, quantidade) VALUES(15, 12, 1);

-- Missões em personagens
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao) VALUES(1, 1, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao) VALUES(2, 1, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(3, 2);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(1, 2);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao) VALUES(4, 3, 'Aceita');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao) VALUES(5, 4, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(6, 5);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao) VALUES(7, 6, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao) VALUES(8, 7, 'Concluída');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao, status_missao) VALUES(9, 8, 'Aceita');
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(10, 9);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(11, 10);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(12, 3);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(13, 6);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(14, 7);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(15, 5);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(16, 4);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(17, 2);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(18, 1);
INSERT INTO missao_personagem(fk_id_personagem, fk_id_missao) VALUES(19, 10);

-- Chefes em personagens
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe) VALUES(1, 1, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe) VALUES(2, 2, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe) VALUES(3, 3);
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe) VALUES(4, 1, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe) VALUES(5, 1, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe) VALUES(7, 5, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe) VALUES(8, 6, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe) VALUES(10, 8, 'Vivo');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe, status_chefe) VALUES(12, 10, 'Derrotado');
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe) VALUES(13, 3);
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe) VALUES(15, 6);
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe) VALUES(16, 7);
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe) VALUES(18, 9);
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe) VALUES(19, 10);
INSERT INTO chefe_personagem(fk_id_personagem, fk_id_chefe) VALUES(20, 4);
