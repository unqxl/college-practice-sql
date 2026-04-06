DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
    id    INT          NOT NULL AUTO_INCREMENT,
    name  VARCHAR(100) NOT NULL,
    count INT          NOT NULL,
    price INT          NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `products` (id, name, count, price) VALUES
(1, 'Стиральная машина', 5, 10000),
(2, 'Холодильник', 0, 20000),
(3, 'Микроволновка', 3, 4000),
(4, 'Пылесос', 2, 5000),
(5, 'Вентилятор', 0, 700),
(6, 'Телевизор', 7, 31740),
(7, 'Тостер', 2, 2500),
(8, 'Принтер', 4, 3000);

SELECT id, name FROM `products`
WHERE id % 2 = 0
ORDER BY price;
