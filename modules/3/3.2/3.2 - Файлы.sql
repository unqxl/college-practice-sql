DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
    id       INT             NOT NULL,
    filename VARCHAR(255)    NOT NULL,
    size     BIGINT          NOT NULL,
    filetype VARCHAR(3)      NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `files` (id, filename, size, filetype) VALUES
(1, 'big_archive.zip', 81604378624, 'zip'),
(2, 'movie_37.mp4', 7838315315, 'mp4'),
(3, 'music007.mp3', 5242880, 'mp3');

-- +----+-----------------+-------------+----------+
-- | id | filename        | size        | filetype |
-- +----+-----------------+-------------+----------+
-- | 1  | big_archive.zip | 81604378624 | zip      |
-- | 2  | movie_37.mp4    | 7838315315  | mp4      |
-- | 3  | music007.mp3    | 5242880     | mp3      |
-- +----+-----------------+-------------+----------+
