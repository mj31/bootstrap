DROP TABLE IF EXISTS `car_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `header_number` varchar(10) DEFAULT NULL COMMENT '主车号',
  `trailer_number` varchar(10) DEFAULT NULL COMMENT '挂车号',
  `car_type` tinyint(2) unsigned zerofill DEFAULT NULL COMMENT '车类型 0代表气头 1代表油头',
  `weight` bigint(20) DEFAULT NULL COMMENT '行车证荷载量 单位t(吨)/1000',
  `capacity` bigint(20) DEFAULT NULL COMMENT '槽车容量 单位m3/100',
  `car_phone` varchar(20) DEFAULT NULL COMMENT '随车电话',
  `driver_name` varchar(20) DEFAULT NULL COMMENT '驾驶员名字',
  `driver_phone` varchar(20) DEFAULT NULL COMMENT '驾驶员电话',
  `follower_name` varchar(20) DEFAULT NULL COMMENT '押运员名字',
  `follower_phone` varchar(20) DEFAULT NULL COMMENT '押运员电话',
  `backup_phone` varchar(20) DEFAULT NULL COMMENT '备用电话',
  `expired_date` bigint(20) DEFAULT NULL COMMENT '车辆信息到期时间 ',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(2) DEFAULT NULL COMMENT '0代表正常 1代表禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_info`
--

LOCK TABLES `car_info` WRITE;
/*!40000 ALTER TABLE `car_info` DISABLE KEYS */;
INSERT INTO `car_info` VALUES (1,'豫J86785','豫JG861',00,2350,5560,'17839310196','徐魁民','18530301688','魏书峰','13283028886','',1469980800000,'',NULL),(2,'豫J86775','豫JG877',00,2350,5560,'17839310195','刘合盅','13303927655','秦合庆','13939229354','',1469980800000,'',0),(3,'豫J86797','豫JG773',00,2350,5560,'17839310200','安西博','18338489777','管庆飞','18864446679','',0,'',0),(4,'豫J86755','豫JG851',00,2350,5560,'17839310199','高全宝','15039386026','王建华','15939368728','',0,'',0),(5,'豫J83699','豫JG671',00,2350,5560,'17839310193','刑可见','13513913811','杨世虎','13938307082','',0,'车和司机信息不全',0),(6,'豫J86700','豫JG867',00,2350,5560,'17839310190','杨成达','15090232788','乔祖兴','15343931939','',1469980800000,'',0),(7,'豫J86757','豫JG875',00,2350,5560,'17839310191','杨成武','13781329859','张印红','13461656821','',0,'',0),(8,'豫J86707','豫JH699',00,2350,5560,'17839310192','张洪恩','18839351368','成力峰','13343635226','',0,'',0),(9,'豫J86770','豫JH166',00,2350,5560,'17839310197','王章记','18239316889','王志全','18839307928','',0,'公司没有车和司机信息',0),(10,'豫J81335','豫JF188',00,2115,5260,'18860321007','朱红勇','18239341712','田文军','15516651802','',1469980800000,'司机信息不全',0),(11,'豫J81325','豫JE749',00,2115,5260,'18860321009','边宝玉','18639376566','朱献华','13193572525','',1469980800000,'司机信息不全',0),(12,'豫J81635','豫JF195',00,2115,5260,'18860321010','黄启兵','13461796689','刘晓明','18839346663','',1472659200000,'',0),(13,'豫J81300','豫JF114',00,2115,5260,'18860321015','杨成丹','15639213867','陈伟波','18639303808','',1469980800000,'',0),(14,'豫J81705','豫JF152',00,2115,5260,'18860321016','白刚强','15239970649','韩朕','13849325540','',1476288000000,'司机信息不全',0),(15,'豫J89188','豫JH062',00,2350,5560,'15670168969','高永超','13781329687','邢夏琳','13103928102','',1477929600000,'',0),(16,'冀JK8615','冀JPK99挂',00,2115,5260,'18236089279','刘振波','13461797753','李红波','13461605997','',1480521600000,'司机信息不全',0),(17,'鲁PC8698','鲁PCE94',00,2350,5560,'15639370199','王凤国','15639370199','','','',0,'公司没有车和司机信息',0),(18,'鄂H1B885','鄂H0E70',00,NULL,NULL,'13383930968','李胜堂','18238368567','李富宽','13383930968','',0,'',0),(19,'豫J40699','豫JE547',NULL,NULL,NULL,'','王国夺','15039315167','张跃攀','18639368086','',0,'',0),(20,'豫J40899','豫JF145',00,NULL,NULL,'13461696333','李付清','13461696333','陈爱会','13938339979','',0,'',0),(21,'豫J63151','豫JC808',01,NULL,NULL,'','王岗山','13939333948','尚贵乾','13525268177','',0,'',0),(22,'冀JL5690','冀JQY27挂',NULL,NULL,NULL,'13131769771','张跃本','15139359831','张彦来','18317499973','',0,'',0),(23,'冀JR0361','冀JXN22',00,NULL,NULL,'','李建军','13939396076','张雁来','18317499973','',0,'',0),(24,'冀JR0371','冀JXN33',00,NULL,NULL,'17839311266','李相群','17839311266','张科民','13353936161','',0,'公司没有车和司机信息',0),(25,'豫J89199','豫JH069挂',00,2350,5560,'18439344111','王全力','18439344111','郭孟栓','15539351298','',0,'公司没有车和司机信息',0),(26,'豫J83999','豫JB467',00,2115,5260,'13103932993','王红伟','13103932993','陈瑞红','13839361322','13700806833',0,'车和司机信息不全',0),(27,'鄂H1B880','鄂H0J67',00,2350,5560,'15908634111','朱良伟','15516112333','赵修芳','13663932259','',1490976000000,'司机信息不全',0),(28,'冀JL5867','冀JRA53',00,2115,5260,'18864465867','董相泽','13939359792','王向伟','13183188829','',1490976000000,'',0),(29,'鄂H1B999','鄂H0L86',00,2350,5560,'13593780899','王广超','13213901559','杨继刚','13603837019','',1469980800000,'',0),(31,'豫J90707','豫JK229挂',00,2350,5560,'18625638159','孙永刚','18603925871','艳纪峰','18639326355','',0,'公司没有车和司机信息',0),(32,'豫U02566','豫U9585',00,2350,5560,'15639131920','候家东','13603898442','黄建红','15639131920','',0,'车和司机信息不全',0),(33,'豫U03266','豫U9075',00,2350,5560,'13653916063','田利强','','张国军','','',0,'',0),(34,'川R44963','川R0875',01,NULL,NULL,'15346311622','盛庆付','15346311622','张丽霞','15090219064','',0,'公司没有车和司机信息',0),(35,'川R44942','川R0795',01,NULL,NULL,'15083212888','郭永军','15083212888','董银珠','15893291881','',0,'公司没有车和司机信息',0),(36,'豫Q13186','豫Q1083挂',00,2115,5260,'18790969080','孙泽伟','15083285752','赵自亮','18238355123','',0,'',0),(37,'冀JQ0635','冀JWB98',00,NULL,NULL,'18239373363','王志太','18539332689','孙自广','15139328991','',0,'',0),(38,'冀JP7763','冀JVZ65',00,NULL,NULL,'','王志豪','15639372366','刘国景','18236027758','',0,'',0),(39,'豫J91336','豫JJ563',NULL,NULL,NULL,'','晁银锋','18203939066','押运员','15639316357','',0,'',0),(40,'豫J91316','豫JJ578挂',NULL,NULL,NULL,'','薛献然','13903937600','陈振洋','13839277657','',0,'',0),(41,'豫J91268','豫JJ515挂',NULL,NULL,NULL,'','黄中杰','13949738937','鲁济庄','13938338223','',0,'',0),(42,'苏C59985','苏C503L挂',NULL,NULL,NULL,'','董继金','15852461408','肖长亮','13685139018','17712032122',0,'',0),(43,'豫J91289','豫JJ517挂',NULL,NULL,NULL,'','胡祖民','13939362700','郭志杰','13461682988','',0,'',0),(44,'苏CN7969','车苏C89T9挂',NULL,NULL,NULL,'','刘军','13407523808','王文东','18120032479','15852368522',0,'',0),(45,'苏CN7727','苏CL083挂',NULL,NULL,NULL,'18936022956','段百鸽','17751922892','许继友','18949956339','18168221718',0,'',0),(46,'苏CN8067','苏C677K挂',NULL,NULL,NULL,'18936022956','孙周','13327930817','孙敏','15996910559','15952113368',0,'',0),(47,'苏CN7967','苏C93T6挂',NULL,NULL,NULL,'','刘保元','15852321336','张保果','18120038364','',0,'',0),(48,'苏CN7995','苏CD965挂',NULL,NULL,NULL,'','郭浩','15952115582','张心文','15950693756','',0,'',0),(49,'苏CN7816','苏C7D23挂',NULL,NULL,NULL,'18936022956','姚贵','18120030491','梁长银','13382689976','',0,'',0),(50,'浙HA7557','浙JQ355',00,NULL,NULL,'','汪永敬','13365297078','','','',0,'',0),(51,'豫Q13108','豫QG261',00,NULL,NULL,'','袁献江','15939308099','','','',0,'',0),(52,'豫J70235','豫JB169挂',01,NULL,NULL,'','任继胜','','杨继刚','13673028876','13183173766',0,'',0),(53,'豫J64613','豫JE613',01,NULL,NULL,'','王岗山','','赵俊朋','15239375613','13939333948',0,'',0),(54,'豫J85596','豫JG367挂',01,NULL,NULL,'','赵学强','','陈心荣','13839372336','',0,'',0),(55,'豫J85586','豫JG368挂',01,NULL,NULL,'','候金虎','','赵丙甫','18639372666','18749926699',0,'',0),(56,'冀JQ5828','冀JWN46',00,NULL,NULL,'15346327499','孙先营','','孙文成','13525600395','',0,'',0),(57,'豫J53973','豫JB786',01,NULL,NULL,'','孙文成','','张顺广','15703933699','18639940988',0,'',0),(58,'豫J72686','豫JC220',01,NULL,NULL,'','孙志强','','马发雨','18790995733','',0,'',0),(59,'豫J50686','豫JD841',01,NULL,NULL,'15286927688','安省委','','刘洪顺','15286927688','',0,'',0),(60,'冀JR7318','冀JYD49挂',00,NULL,NULL,'','董恒超','','孙永杰','15286905188','',0,'',0),(61,'冀JR7508','冀JYF81挂',00,NULL,NULL,'','车建海','','车建方','15303933618','',0,'',0),(62,'豫J81345','豫JF187挂',00,NULL,NULL,'18238310666','袁洪磊','','李圣堂','18238310666','13323935855',0,'',0),(63,'豫J46189','豫JE756',00,NULL,NULL,'','张莹涛','','','18839346188','',0,'',0),(64,'豫J46188','豫JE756',00,NULL,NULL,'','','','','18839346188','',0,'',0),(65,'豫J81653','豫JE944',00,2115,5260,'','杨占营','','赵兵','','18860321020',0,'',0),(66,'豫J53876','豫JC733',01,NULL,NULL,'18839393911','安献委','','赵胜勇','18839393911','',0,'',0),(67,'冀JQ6217','冀JWH14挂',00,NULL,NULL,'','王金伟','','张元峰','18039356661','13839268144',0,'',0),(68,'冀JP7602','冀JWB08挂',NULL,NULL,NULL,'','裴向军','18635517396','廉玉于','18636483018','',0,'',0),(69,'豫J85585','豫JG388',NULL,NULL,NULL,'','马百鹤','18238303207','李伟堂','13839283833','',0,'',0),(70,'苏EG8823','',00,NULL,NULL,'','','','','','',0,'',0),(71,'豫Q12581','',00,NULL,NULL,'','','','','','',0,'',0),(72,'苏EG8823','苏EH517挂',00,NULL,NULL,'','汤守峰','18324691118','姜鑫','18324691118','',0,'',0),(73,'苏EH5532','苏EG507挂',00,NULL,NULL,'','杨志文','138466166','王长青','13846616661','',0,'',0),(74,'皖PA2042','皖P9002挂',00,NULL,NULL,'','张宣','13956595652','','','',0,'',0),(75,'皖PA7293','皖P7195挂',00,NULL,NULL,'','朱林 ',' 13865300850 ','','','',0,'',0),(76,'豫J81735','豫JF185挂',00,NULL,NULL,'','赵江顺','','朱新卫','18860321008','',0,'',0),(77,'豫Q13118','豫QG226挂',00,NULL,NULL,'','朱绍海 ','','朱少明','17095015666 ','',0,'',0),(78,'皖PA7307','皖PA371挂',00,NULL,NULL,'','戴道荣 ','13695637028','唐亮喜','13637218131','',0,'',0),(79,'皖PA2715','皖P7733挂',00,NULL,NULL,'','谷红军','','崔司民','13705631442','',0,'',0),(80,'冀JM3829','冀JRY62挂',00,NULL,NULL,'','张更权','18704583677','常丙俊','18704583677','',0,'',0),(81,'鄂H1B666','鄂H0L60挂',00,NULL,NULL,'','王令冲','','马法雨','13477384111','',0,'',0),(82,'苏CN7995','苏CD965挂',00,NULL,NULL,'','郭浩','15952115582','张心文','15950693756','',0,'',0),(83,'冀JR7727','',00,NULL,NULL,'','','','','','',0,'',0),(84,'浙B81A70','',00,NULL,NULL,'','','','','','',0,'',0),(85,'豫J91126','豫JG851挂',00,NULL,NULL,'','王东虎','15936772966','张顺广','13721750588','',0,'',0),(86,'豫J91368','豫JJ500挂',00,NULL,NULL,'','赵修徳','13513921765','刘二伟','13781353080','',0,'',0),(87,'豫J91339','豫JJ530挂',00,NULL,NULL,'18939374706','邵艳军','','李全新','18303996785','',0,'',0),(88,'鲁RB2251','鲁R8J52',00,NULL,NULL,'','高志军','15670188918','','','',0,'',0),(89,'苏EG7969','苏EH233挂',00,NULL,NULL,'','王治军','15996688060','','','',0,'',0),(90,'苏EG8807','苏EG502挂',00,NULL,NULL,'','刘海波','18012857777','王海峰','18012857777','',0,'',0);
/*!40000 ALTER TABLE `car_info` ENABLE KEYS */;
UNLOCK TABLES;
