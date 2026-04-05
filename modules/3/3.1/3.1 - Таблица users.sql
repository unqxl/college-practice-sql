DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id         INT         NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, first_name, last_name) VALUES
(1, 'Дмитрий', 'Иванов'),
(2, 'Анатолий', 'Белый'),
(3, 'Денис', 'Давыдов');

-- +----+------------+-----------+
-- | id | first_name | last_name |
-- +----+------------+-----------+
-- | 1  | Дмитрий    | Иванов    |
-- | 2  | Анатолий   | Белый     |
-- | 3  | Денис      | Давыдов   |
-- +----+------------+-----------+
