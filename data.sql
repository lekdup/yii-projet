DROP TABLE IF EXISTS `user`;

CREATE TABLE IF NOT EXISTS `user` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(55) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `auth_key` VARCHAR(255) NOT NULL,
    `access_token` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `username_UNIQUE` (`username` ASC)
)


START TRANSACTION;
INSERT INTO `user` (`id`, `username`, `password`, `auth_key`, `access_token`) VALUES (1, 'admin', 'admin', 'key1', 'token1'); 
INSERT INTO `user` (`id`, `username`, `password`, `auth_key`, `access_token`) VALUES (2, 'demo', 'demo', 'key2', 'token2'); 