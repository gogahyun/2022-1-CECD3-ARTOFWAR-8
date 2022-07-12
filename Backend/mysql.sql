CREATE TABLE `userInfo` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `uid` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uid`));


CREATE TABLE `videoInfo` (
  `vid` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `mjclass` VARCHAR(45) NULL,
  `subclass` VARCHAR(45) NULL,
  `status` INT NULL DEFAULT 0,
  `vdaddress` VARCHAR(45) NULL,
  `introduction` VARCHAR(45) NULL,
  `storage_key` VARCHAR(45) NULL,
  `storage_url` VARCHAR(45) NULL,
  `upload_time` TIMESTAMP NOT NULL DEFAULT current_timestamp,
  `uid` INT NOT NULL,
  PRIMARY KEY (`video_id`),
  FOREIGN KEY (`uid`) REFERENCES `userInfo` (`uid`)
)

CREATE TABLE `inquire` (
  `qid` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `content` VARCHAR(300) NULL,
  `vid` INT NOT NULL,
  `uid` INT NOT NULL,
  `question` VARCHAR(300) NULL,
  PRIMARY KEY (`qid`),
  FOREIGN KEY (`vid`) REFERENCES `videoInfo` (`vid`),
  FOREIGN KEY (`uid`) REFERENCES `userInfo` (`uid`)
);