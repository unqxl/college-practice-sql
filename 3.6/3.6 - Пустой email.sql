DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id    INT          NOT NULL,
    email VARCHAR(100) NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, email) VALUES
(1, 'user1@domain.com'),
(2, 'user2@domain.com'),
(3, 'user3@domain.com'),
(4, 'user4@domain.com');

-- +----+------------------+
-- | id | email            |
-- +----+------------------+
-- | 1  | user1@domain.com |
-- | 2  | user2@domain.com |
-- | 3  | user3@domain.com |
-- | 4  | user4@domain.com |
-- +----+------------------+
