DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    id    INT               NOT NULL,
    name  VARCHAR(100)      NOT NULL,
    count TINYINT           NOT NULL,
    price INT               NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `products` (id, name, count, price) VALUES
(1, 'Холодильник', 10, 50000),
(2, 'Стиральная машина', 0, 23570),
(3, 'Утюг', 3, 7300);
