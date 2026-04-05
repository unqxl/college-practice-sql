DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
    `id`            INT                                                                 NOT NULL,
    `user_id`       INT                                                                 DEFAULT NULL,
    `amount`        DECIMAL(10,2)                                                       NOT NULL,
    `created`       TIMESTAMP                                                           NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `state`         ENUM('new', 'cancelled', 'in_progress', 'delivered', 'completed')   NOT NULL,
    `options`       SET('pack', 'fitting', 'call', 'intercom')                          DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `orders` (`id`, `user_id`, `amount`, `created`, `state`, `options`) VALUES
(456, 763, 14299.00, '2018-02-01 17:45:59', 'completed', 'pack,call'),
(457, 1987, 249.50, '2018-02-01 18:23:04', 'delivered', 'pack,intercom'),
(459, 78, 2300.12, '2018-02-01 22:12:09', 'in_progress', NULL);

+-------+---------+----------+----------------------+-------------+---------------+
| id    | user_id | amount   | created              | state       | options       |
+-------+---------+----------+----------------------+-------------+---------------+
| 456   | 763     | 14299.00 | 2018-02-01 17:45:59  | completed   | pack,call     |
| 457   | 1987    | 249.50   | 2018-02-01 18:23:04  | delivered   | pack,intercom |
| 459   | 78      | 2300.12  | 2018-02-01 22:12:09  | in_progress |               |
+-------+---------+----------+----------------------+-------------+---------------+
