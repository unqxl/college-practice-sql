-- TRIM(TRAILING c FROM s) — удаляет символ c в конце строки s

DROP TABLE IF EXISTS `domains`;

CREATE TABLE `domains` (
    id     INT          NOT NULL AUTO_INCREMENT,
    domain VARCHAR(100) DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `domains` (id, domain)
VALUES
    (1, 'google.com'),
    (2, 'test.ru.'),
    (3, 'ya.ru.'),
    (4, 'facebook.com'),
    (5, 'stepik.com.'),
    (6, 'sql.info'),
    (7, 'db.info.'),
    (8, 'mariadb.org');

UPDATE `domains`
SET `domain` = TRIM(TRAILING '.' FROM `domain`)
WHERE `domain` LIKE '%.';

SELECT * FROM `domains`;

-- +----+--------------+
-- | id | domain       |
-- +----+--------------+
-- | 1  | google.com   |
-- | 2  | test.ru      |
-- | 3  | ya.ru        |
-- | 4  | facebook.com |
-- | 5  | stepik.com   |
-- | 6  | sql.info     |
-- | 7  | db.info      |
-- | 8  | mariadb.org  |
-- +----+--------------+
