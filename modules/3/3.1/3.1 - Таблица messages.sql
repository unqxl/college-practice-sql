DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
    id        INT          NOT NULL,
    subject   VARCHAR(100) DEFAULT NULL,
    message   TEXT         DEFAULT NULL,
    add_date  DATETIME     DEFAULT NULL,
    is_public TINYINT(1)   DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `messages` (id, subject, message, add_date, is_public) VALUES
(1, 'Первое сообщение', 'Мое первое сообщение!', '2016-12-12 14:16:00', 1);

-- +----+------------------+-----------------------+---------------------+-----------+
-- | id | subject          | message               | add_date            | is_public |
-- +----+------------------+-----------------------+---------------------+-----------+
-- | 1  | Первое сообщение | Мое первое сообщение! | 2016-12-12 14:16:00 | 1         |
-- +----+------------------+-----------------------+---------------------+-----------+
