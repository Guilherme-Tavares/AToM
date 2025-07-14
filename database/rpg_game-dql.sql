USE rpg_game;

-- 1. INNER JOIN: Itens presentes em inventários com os nomes dos personagens e as quantidades
SELECT p.nome AS 'Personagem', i.nome AS 'Item', ii.quantidade AS 'Quantidade'
FROM item_inventario ii
INNER JOIN inventario inv ON ii.fk_id_inventario = inv.id_inventario
INNER JOIN personagem p ON inv.fk_id_personagem = p.id_personagem
INNER JOIN item i ON ii.fk_id_item = i.id_item;

-- 2. LEFT JOIN: Exibe todas as localidades com os NPCs associados, retornando NULL se não houver NPC
SELECT l.nome AS 'Área', n.nome AS 'NPC'
FROM localidade l
LEFT JOIN npc n ON l.id_localidade = n.fk_id_localidade;

-- 3. RIGHT JOIN: Mostra os chefes e os personagens que os enfrentaram, retornando NULL se o chefe ainda não tiver sido enfrentado
SELECT c.nome AS 'Chefe', p.nome AS 'Personagem', cp.status_chefe AS 'Status'
FROM chefe c
RIGHT JOIN chefe_personagem cp ON c.id_chefe = cp.fk_id_chefe
RIGHT JOIN personagem p ON cp.fk_id_personagem = p.id_personagem;

-- 4. SUBCONSULTA: Nomes dos personagens que possuem mais de 3 itens somados em seus inventários
SELECT nome AS 'Personagem'
FROM personagem
WHERE id_personagem IN (
    SELECT inv.fk_id_personagem
    FROM item_inventario ii
    JOIN inventario inv ON ii.fk_id_inventario = inv.id_inventario
    GROUP BY inv.fk_id_personagem
    HAVING SUM(ii.quantidade) > 3
);

-- 5. SUBCONSULTA: Nome e localidade dos personagens com a maior quantidade de dinheiro
SELECT p.nome AS 'Personagem', p.dinheiro AS 'Dinheiro', l.nome AS 'Área'
FROM personagem p
JOIN localidade l ON p.fk_id_localidade = l.id_localidade
WHERE p.dinheiro = (
    SELECT MAX(dinheiro)
    FROM personagem
);

-- 6. GROUP BY: Conta quantas missões cada personagem aceitou ou concluiu
SELECT p.nome AS 'Personagem', COUNT(mp.id_missao_personagem) AS 'Missões'
FROM missao_personagem mp
JOIN personagem p ON mp.fk_id_personagem = p.id_personagem
GROUP BY p.nome;

-- 7. GROUP BY com HAVING: Lista localidades com mais de 1 item disponível
SELECT l.nome AS 'Área', COUNT(il.id_item_localidade) AS 'Itens'
FROM item_localidade il
JOIN localidade l ON il.fk_id_localidade = l.id_localidade
WHERE il.disponivel = TRUE
GROUP BY l.nome
HAVING COUNT(il.id_item_localidade) > 1;
