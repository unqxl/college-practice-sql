DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
    id        INT             NOT NULL,
    file_url  VARCHAR(500)    NOT NULL,
    file_path VARCHAR(200)    DEFAULT NULL,
    size      BIGINT          NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `files` (id, file_url, file_path, size) VALUES
(1, 'http://archives.com/archives/big_archive.zip', 'files/2018/02/archive.zip', 81604378624),
(2, 'http://movies.com/movies/movie.mp4', NULL, 0),
(3, 'http://movies.com/best-songs/song.mp3', 'files/2018/03/song.mp3', 5242880);

-- +----+-----------------------------------------------+---------------------------+-------------+
-- | id | file_url                                      | file_path                 | size        |
-- +----+-----------------------------------------------+---------------------------+-------------+
-- | 1  | http://archives.com/archives/big_archive.zip  | files/2018/02/archive.zip | 81604378624 |
-- | 2  | http://movies.com/movies/movie.mp4            |                           | 0           |
-- | 3  | http://movies.com/best-songs/song.mp3         | files/2018/03/song.mp3    | 5242880     |
-- +----+-----------------------------------------------+---------------------------+-------------+
