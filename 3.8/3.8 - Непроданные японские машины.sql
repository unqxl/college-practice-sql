DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
    id          INT             NOT NULL,
    dealer_id   INT             DEFAULT NULL,
    mark        VARCHAR(100)    NOT NULL,
    model       VARCHAR(100)    NOT NULL,
    year        INT             NOT NULL,
    country     VARCHAR(2)      NOT NULL,
    power       INT             NOT NULL,
    sold        TINYINT(1)      NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
);

INSERT INTO `cars` (id, dealer_id, mark, model, year, country, power, sold)
VALUES 
(1, 1, 'Toyota', 'Camry', 2012, 'JP', 139, 0),
(2, 23, 'Mazda', 'Demio', 2004, 'JP', 113, 0),
(3, 7, 'ВАЗ', '2110', 2010, 'RU', 79, 1),
(4, NULL, 'Nissan', 'Almera', 2016, 'JP', 130, 0),
(5, 1, 'Nissan', 'Patrol', 2014, 'JP', 200, 0),
(6, 23, 'Reno', 'Logan', 2009, 'FR', 87, 1),
(7, 7, 'Lada', 'Priora', 2017, 'RU', 78, 0),
(8, 67, 'Reno', 'Duster', 2011, 'FR', 143, 0),
(9, 13, 'Hyundai', 'Solaris', 2010, 'KR', 98, 0),
(10, 5, 'Nissan', 'Juke', 2016, 'JP', 120, 0),
(11, 2, 'Reno', 'Logan', 2011, 'FR', 90, 0),
(12, NULL, 'Nissan', 'Sunny', 1990, 'JP', 67, 0),
(13, 1, 'Nissan', 'Juke', 2012, 'JP', 125, 1),
(14, 5, 'Nissan', 'Juke', 2009, 'JP', 120, 0),
(15, 23, 'Nissan', 'Almera', 2017, 'JP', 113, 0),
(16, 5, 'Nissan', 'Juke', 2013, 'RU', 125, 0);

SELECT `mark`, `model`, `year`, `power` FROM `cars`
WHERE `mark` = 'Nissan' 
    AND `country` = 'JP' 
    AND `year` BETWEEN 2010 AND 2016
    AND `sold` != 1
ORDER BY `power` ASC;

+----+-----------+---------+---------+------+---------+-------+------+
| id | dealer_id | mark    | model   | year | country | power | sold |
+----+-----------+---------+---------+------+---------+-------+------+
| 1  | 1         | Toyota  | Camry   | 2012 | JP      | 139   | 0    |
| 2  | 23        | Mazda   | Demio   | 2004 | JP      | 113   | 0    |
| 3  | 7         | ВАЗ     | 2110    | 2010 | RU      | 79    | 1    |
| 4  | NULL      | Nissan  | Almera  | 2016 | JP      | 130   | 0    |
| 5  | 1         | Nissan  | Patrol  | 2014 | JP      | 200   | 0    |
| 6  | 23        | Reno    | Logan   | 2009 | FR      | 87    | 1    |
| 7  | 7         | Lada    | Priora  | 2017 | RU      | 78    | 0    |
| 8  | 67        | Reno    | Duster  | 2011 | FR      | 143   | 0    |
| 9  | 13        | Hyundai | Solaris | 2010 | KR      | 98    | 0    |
| 10 | 5         | Nissan  | Juke    | 2016 | JP      | 120   | 0    |
| 11 | 2         | Reno    | Logan   | 2011 | FR      | 90    | 0    |
| 12 | NULL      | Nissan  | Sunny   | 1990 | JP      | 67    | 0    |
| 13 | 1         | Nissan  | Juke    | 2012 | JP      | 125   | 1    |
| 14 | 5         | Nissan  | Juke    | 2009 | JP      | 120   | 0    |
| 15 | 23        | Nissan  | Almera  | 2017 | JP      | 113   | 0    |
| 16 | 5         | Nissan  | Juke    | 2013 | RU      | 125   | 0    |
+----+-----------+---------+---------+------+---------+-------+------+
