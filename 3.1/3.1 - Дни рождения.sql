DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id         INT         NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    birthday   DATE        DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, first_name, last_name, birthday) VALUES
(1, 'Дмитрий', 'Иванов', '1995-08-12'),
(2, 'Светлана', 'Демчук', '1993-07-08'),
(3, 'Денис', 'Антонов', '1996-12-23');

-- +----+------------+-----------+------------+
-- | id | first_name | last_name | birthday   |
-- +----+------------+-----------+------------+
-- | 1  | Дмитрий    | Иванов    | 1995-08-12 |
-- | 2  | Светлана   | Демчук    | 1993-07-08 |
-- | 3  | Денис      | Антонов   | 1996-12-23 |
-- +----+------------+-----------+------------+