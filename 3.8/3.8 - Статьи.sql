DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
    id            INT                                       NOT NULL,
    name          VARCHAR(80)                               NOT NULL,
    text          TEXT                                      DEFAULT NULL,
    state         ENUM('draft', 'correction', 'public')     NOT NULL,

    PRIMARY KEY (`id`)
);

INSERT INTO `articles` (id, name, text, state) VALUES
(1, 'Новое в Python 3.6', NULL, 'draft'),
(2, 'Оптимизация SQL запросов', 'При больших объемах данных ...', 'correction'),
(3, 'Транзакции в MySQL', 'По долгу службы мне приходится ...', 'public');

-- +----+--------------------------+------------------------------------+----------------------+
-- | id | name                     | text                               | state                |
-- +----+--------------------------+------------------------------------+----------------------+
-- | 1  | Новое в Python 3.6       |                                    | draft                |
-- | 2  | Оптимизация SQL запросов | При больших объемах данных ...     | correction           |
-- | 3  | Транзакции в MySQL       | По долгу службы мне приходится ... | public               |
-- +----+--------------------------+------------------------------------+----------------------+