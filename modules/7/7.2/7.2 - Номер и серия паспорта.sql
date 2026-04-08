-- LEFT(s, n)  — возвращает первые n символов строки s
-- RIGHT(s, n) — возвращает последние n символов строки s

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    id       INT         NOT NULL AUTO_INCREMENT,
    email    VARCHAR(50) DEFAULT NULL,
    passport VARCHAR(10) DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, email, passport)
VALUES
    (1, 'user01@mail.com', '4509126848'),
    (2, 'user02@mail.com', NULL),
    (3, 'user03@mail.com', '4509126849'),
    (4, 'user04@mail.com', '4510123456'),
    (5, 'user05@mail.com', NULL),
    (6, 'user06@mail.com', '4515846541'),
    (7, 'user07@mail.com', '4504012345'),
    (8, 'user08@mail.com', '4509648451');

SELECT `id`, LEFT(`passport`, 4) AS `series`, RIGHT(`passport`, 6) AS `number`
FROM `users`
WHERE `passport` IS NOT NULL;

-- +----+--------+--------+
-- | id | series | number |
-- +----+--------+--------+
-- | 1  | 4509   | 126848 |
-- | 3  | 4509   | 126849 |
-- | 4  | 4510   | 123456 |
-- | 6  | 4515   | 846541 |
-- | 7  | 4504   | 012345 |
-- | 8  | 4509   | 648451 |
-- +----+--------+--------+
