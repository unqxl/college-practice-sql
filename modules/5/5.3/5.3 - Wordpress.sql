SET foreign_key_checks = 0;
DROP TABLE IF EXISTS `wp_users`;
DROP TABLE IF EXISTS `wp_posts`;
DROP TABLE IF EXISTS `wp_comments`;
DROP TABLE IF EXISTS `blog_users`;
DROP TABLE IF EXISTS `blog_posts`;
DROP TABLE IF EXISTS `blog_comments`;
SET foreign_key_checks = 1;

CREATE TABLE `wp_users`    (id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (`id`));
CREATE TABLE `wp_posts`    (id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (`id`));
CREATE TABLE `wp_comments` (id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (`id`));

RENAME TABLE `wp_users`    TO `blog_users`;
RENAME TABLE `wp_posts`    TO `blog_posts`;
RENAME TABLE `wp_comments` TO `blog_comments`;
