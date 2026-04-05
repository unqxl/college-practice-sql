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
(3, 'Nissan', 'Patrol', 2016, 60000),
(4, 'Toyota', 'Prius',  2015, 10000),
(5, 'Mazda',  'Demio',  2003, 98000),
(6, 'Nissan', 'Murano', 2016, 5000);

SELECT * FROM `cars`
WHERE mileage < 50000
  AND year = 2016
ORDER BY mileage;

-- +----+--------+--------+------+---------+
-- | id | mark   | model  | year | mileage |
-- +----+--------+--------+------+---------+
-- | 6  | Nissan | Murano | 2016 | 5000    |
-- | 2  | Mazda  | CX-5   | 2016 | 17000   |
-- +----+--------+--------+------+---------+
