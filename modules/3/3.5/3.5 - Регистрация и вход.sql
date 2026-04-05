DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id            INT          NOT NULL,
    email         VARCHAR(100) NOT NULL,
    date_joined   DATE         NOT NULL,
    last_activity DATETIME     NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `users` (id, email, date_joined, last_activity) VALUES
(1, 'user1@domain.com', '2014-12-12', '2016-04-08 12:34:54'),
(2, 'user2@domain.com', '2014-12-12', '2017-02-13 11:46:53'),
(3, 'user3@domain.com', '2014-12-13', '2017-04-04 05:12:07');

-- +----+------------------+-------------+---------------------+
-- | id | email            | date_joined | last_activity       |
-- +----+------------------+-------------+---------------------+
-- | 1  | user1@domain.com | 2014-12-12  | 2016-04-08 12:34:54 |
-- | 2  | user2@domain.com | 2014-12-12  | 2017-02-13 11:46:53 |
-- | 3  | user3@domain.com | 2014-12-13  | 2017-04-04 05:12:07 |
-- +----+------------------+-------------+---------------------+
