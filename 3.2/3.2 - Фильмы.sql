DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
    id      INT          NOT NULL,
    name    VARCHAR(100) NOT NULL,
    rating  FLOAT        NOT NULL,
    country CHAR(2)      NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `films` (id, name, rating, country) VALUES
(1, 'Большая буря', 3.45, 'RU'),
(2, 'Игра', 7.5714, 'US'),
(3, 'Брат', 8.9, 'RU');

-- +----+--------------+--------+---------+
-- | id | name         | rating | country |
-- +----+--------------+--------+---------+
-- | 1  | Большая буря | 3.45   | RU      |
-- | 2  | Игра         | 7.5714 | US      |
-- | 3  | Брат         | 8.9    | RU      |
-- +----+--------------+--------+---------+
