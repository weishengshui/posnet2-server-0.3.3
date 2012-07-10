CREATE TABLE `FinanceReportHistory` (
  `id` VARCHAR(255) NOT NULL,
  `agentId` VARCHAR(255) DEFAULT NULL,
  `agentName` VARCHAR(255) DEFAULT NULL,
  `createDate` DATETIME DEFAULT NULL,
  `endDate` DATETIME DEFAULT NULL,
  `modifyDate` DATETIME DEFAULT NULL,
  `reportDetail` LONGTEXT,
  `startDate` DATETIME DEFAULT NULL,
  `status` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;