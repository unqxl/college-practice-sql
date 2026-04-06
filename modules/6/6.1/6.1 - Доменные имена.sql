SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `domains`;
SET foreign_key_checks = 1;

CREATE TABLE `domains` (
    id      INT         NOT NULL AUTO_INCREMENT,
    domain  VARCHAR(50) DEFAULT NULL,
    created DATE        DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `domains` (id, domain, created)
VALUES
    (1, 'yandex.ru', '1997-09-23'),
    (2, 'google.com', '1997-09-15'),
    (3, 'habrahabr.ru', '2006-04-17'),
    (4, 'shultais.education', '2015-02-06'),
    (5, 'fl.ru', '2000-03-20'),
    (6, 'geektimes.ru', '2014-09-09'),
    (7, 'adobe.com', '1997-03-29'),
    (8, 'vk.com', '1997-06-24'),
    (9, 'github.com', '2007-10-09'),
    (10, 'tproger.ru', '2012-03-12');

SELECT `domain` FROM `domains`
WHERE `domain` LIKE '%.ru'
ORDER BY `created`;

-- +--------------+
-- | domain       |
-- +--------------+
-- | yandex.ru    |
-- | fl.ru        |
-- | habrahabr.ru |
-- | tproger.ru   |
-- | geektimes.ru |
-- +--------------+
