CREATE TABLE IF NOT EXISTS `cache` (
    `id` INT PRIMARY KEY unsigned NOT NULL AUTO_INCREMENT,
    `key` TEXT NOT NULL,--"The key is the path to the cache item from .cache/"
    `path` TEXT NOT NULL,
    `value` BLOB NOT NULL,
    'expire' DOUBLE unsigned DEFAULT NULL, -- NULL means never expire
    `last_update` DOUBLE unsigned NOT NULL DEFAULT 0,
    `last_use` DOUBLE unsigned NOT NULL DEFAULT 0,
    `access_count_since_last_update` INT unsigned NOT NULL DEFAULT 0,
--    `this_month_access_count` INT unsigned NOT NULL DEFAULT 0,
);
