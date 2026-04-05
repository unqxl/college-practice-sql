DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
    date    DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    browser VARCHAR(500) NOT NULL DEFAULT '',
    is_bot  TINYINT(1)   NOT NULL DEFAULT 0
);

INSERT INTO `logs` (date, browser, is_bot) VALUES
('2018-03-19 19:50:01', 'Chrome 64.0.1.417', 0),
('2018-03-19 19:55:11', 'Firefox 55 (yandex bot)', 1),
('2018-03-19 19:56:12', 'Chrome 63.0.0.471', 0);

-- +---------------------+-------------------------+--------+
-- | date                | browser                 | is_bot |
-- +---------------------+-------------------------+--------+
-- | 2018-03-19 19:50:01 | Chrome 64.0.1.417       | FALSE  |
-- | 2018-03-19 19:55:11 | Firefox 55 (yandex bot) | TRUE   |
-- | 2018-03-19 19:56:12 | Chrome 63.0.0.471       | FALSE  |
-- +---------------------+-------------------------+--------+
