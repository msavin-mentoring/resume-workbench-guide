-- Найти достижения и проекты по точному термину.
SELECT item.*, employment.company, employment.role
FROM resume_items_fts fts
JOIN resume_items item ON item.id = fts.rowid
LEFT JOIN employments employment ON employment.id = item.employment_id
WHERE resume_items_fts MATCH 'partitioning OR партиционирование'
ORDER BY bm25(resume_items_fts);

-- Получить проекты и общие достижения одного трудоустройства без ложной связи achievement -> project.
SELECT employment.company, item.item_type, item.name, item.text
FROM employments employment
JOIN resume_items item ON item.employment_id = employment.id
WHERE employment.id = :employment_id
  AND item.item_type IN ('project', 'achievement')
ORDER BY item.source_line_start;

-- Найти опыт с PHP и PostgreSQL через нормализованный стек трудоустройства.
SELECT employment.id, employment.company, employment.role
FROM employments employment
JOIN employment_technologies php_link ON php_link.employment_id = employment.id
JOIN technologies php ON php.id = php_link.technology_id AND php.normalized_name = 'php'
JOIN employment_technologies pg_link ON pg_link.employment_id = employment.id
JOIN technologies pg ON pg.id = pg_link.technology_id AND pg.normalized_name = 'postgresql';
