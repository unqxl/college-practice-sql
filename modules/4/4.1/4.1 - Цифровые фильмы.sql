DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
    id       INT          NOT NULL AUTO_INCREMENT,
    film_id  INT          NOT NULL,
    size     BIGINT       NOT NULL,
    filename VARCHAR(100) DEFAULT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `files` (id, film_id, size, filename) VALUES
(1, 356, 28668906700, 'silicon_valley_s02_1080p.zip'),
(2, 4514, 2684354560, 'dunkirk.mp4'),
(3, 87145, 734003200, 'milk.mp4');

-- +----+---------+-------------+------------------------------+
-- | id | film_id | size        | filename                     |
-- +----+---------+-------------+------------------------------+
-- | 1  | 356     | 28668906700 | silicon_valley_s02_1080p.zip |
-- | 2  | 4514    | 2684354560  | dunkirk.mp4                  |
-- | 3  | 87145   | 734003200   | milk.mp4                     |
-- +----+---------+-------------+------------------------------+
