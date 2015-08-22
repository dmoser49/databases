USE chat;


-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
--
-- ---

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  username VARCHAR(250) NULL DEFAULT NULL,
  password VARCHAR(250) NULL DEFAULT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table 'messages'
--
-- ---

DROP TABLE IF EXISTS messages;

CREATE TABLE messages (
  id INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  text VARCHAR(250) NULL DEFAULT NULL,
  sender INTEGER NULL DEFAULT NULL,
  room_id INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table 'rooms'
--
-- ---

DROP TABLE IF EXISTS rooms;

CREATE TABLE rooms (
  id INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  roomname VARCHAR(250) NULL DEFAULT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE messages ADD FOREIGN KEY (room_id) REFERENCES rooms (id);
ALTER TABLE messages ADD FOREIGN KEY (sender) REFERENCES users (id);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE users ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE messages ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE rooms ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO users (id,username,password) VALUES
-- ('','','');
-- INSERT INTO messages (id,text,sender) VALUES
-- ('','','');
-- INSERT INTO rooms (id,roomname) VALUES
-- ('','');
