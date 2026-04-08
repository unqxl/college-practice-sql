-- FLOOR(x) — округляет x вниз до ближайшего целого

DROP TABLE IF EXISTS `bills`;

CREATE TABLE `bills` (
    id            INT           NOT NULL AUTO_INCREMENT,
    user_id       INT           DEFAULT NULL,
    amount        DECIMAL(8, 2) DEFAULT NULL,
    personal_sale INT           DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `bills` (id, user_id, amount, personal_sale)
VALUES
    (1, 745, 738.65, 4),
    (2, 1445, 531.12, 5),
    (3, NULL, 800.0, 0),
    (4, NULL, 1349.0, 0),
    (5, 56137, 67.5, 4),
    (6, 171, 245.14, 0),
    (7, NULL, 876.59, 0),
    (8, 6735, 234.0, 3);

SELECT `id`, FLOOR(`amount` * (1 - `personal_sale` / 100)) AS `final_amount`
FROM `bills`;

-- +----+--------------+
-- | id | final_amount |
-- +----+--------------+
-- | 1  | 709          |
-- | 2  | 504          |
-- | 3  | 800          |
-- | 4  | 1349         |
-- | 5  | 64           |
-- | 6  | 245          |
-- | 7  | 876          |
-- | 8  | 226          |
-- +----+--------------+
