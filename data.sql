DROP TABLE IF EXISTS `user`;

CREATE TABLE IF NOT EXISTS `user` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(55) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `auth_key` VARCHAR(255) NOT NULL,
    `access_token` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`username`)
);


START TRANSACTION;
INSERT INTO `user` (`id`, `username`, `password`, `auth_key`, `access_token`) VALUES (1, 'admin', 'admin', 'key1', 'token1'); 
INSERT INTO `user` (`id`, `username`, `password`, `auth_key`, `access_token`) VALUES (2, 'demo', 'demo', 'key2', 'token2'); 



DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(1024) NOT NULL,
    `slug` VARCHAR(1024) NOT NULL,
    `body` LONGTEXT NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL,
    `created_by` INT NOT NULL,
    PRIMARY KEY (`id`)
);

ALTER TABLE `article` ADD CONSTRAINT `article_user_created_by_fk` FOREIGN KEY (created_by) REFERENCES user (id);