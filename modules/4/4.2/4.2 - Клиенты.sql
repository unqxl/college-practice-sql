DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
    id        INT          NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    email     VARCHAR(100) NOT NULL,
    passport  VARCHAR(10)  NOT NULL,

    PRIMARY KEY (`id`),
    UNIQUE KEY `email` (`email`),
    UNIQUE KEY `passport` (`passport`)
);
