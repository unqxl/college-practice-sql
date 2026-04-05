DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
    id      INT         NOT NULL,
    mark    VARCHAR(20) NOT NULL,
    model   VARCHAR(20) NOT NULL,
    year    YEAR        NOT NULL,
    mileage INT         NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `cars` (id, mark, model, year, mileage) VALUES
(1, 'Toyota', 'Camry',  2015, 32000),
(2, 'Mazda',  'CX-5',   2016, 17000),
(3, 'Nissan', 'Patrol', 2016, 60000);

-- +----+--------+--------+------+---------+
-- | id | mark   | model  | year | mileage |
-- +----+--------+--------+------+---------+
-- | 1  | Toyota | Camry  | 2015 | 32000   |
-- | 2  | Mazda  | CX-5   | 2016 | 17000   |
-- | 3  | Nissan | Patrol | 2016 | 60000   |
-- +----+--------+--------+------+---------+
