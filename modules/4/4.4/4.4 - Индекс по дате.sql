DROP TABLE IF EXISTS `calendar`;
CREATE TABLE `calendar` (
    id          INT          NOT NULL AUTO_INCREMENT,
    city_id     INT          NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT         NOT NULL,
    date        DATETIME     NOT NULL,

    PRIMARY KEY (`id`)
);

CREATE INDEX `base_query` ON `calendar` (`city_id`, `date`);
