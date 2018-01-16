DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180116003637');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180116003637');
-- Add your query below.

INSERT INTO `creature_loot_template` VALUES (5983, 8396, 40, 0, 1, 1, 0);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
