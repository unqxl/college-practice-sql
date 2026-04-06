DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id         INT         NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    birthday   DATE        DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, first_name, last_name, birthday) VALUES
(1, 'Дмитрий', 'Петров', '2000-03-14'),
(2, 'Ольга', 'Антонова', '1999-12-01'),
(3, 'Сергей', 'Васильев', '2002-02-20'),
(4, 'Иван', 'Степаниденко', '2004-03-07'),
(5, 'Алена', 'Шикова', '1999-08-17'),
(6, 'Василина', 'Парамонова', '2000-10-10'),
(7, 'Иван', 'Пузаков', '2002-02-20'),
(8, 'Алина', 'Антонова', '2002-01-01');

UPDATE `users`
SET first_name = 'Дмитрий'
WHERE id = 7;
