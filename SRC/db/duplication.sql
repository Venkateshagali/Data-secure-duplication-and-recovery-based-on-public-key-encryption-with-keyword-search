/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - de-duplication
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`de-duplication` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `de-duplication`;

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `profile` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `user` varchar(222) DEFAULT NULL,
  `pass` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `dob` varchar(222) DEFAULT NULL,
  `gender` varchar(222) DEFAULT NULL,
  `mobile` varchar(222) DEFAULT NULL,
  `location` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Deactivated'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oreg` */

insert  into `oreg`(`profile`,`id`,`user`,`pass`,`email`,`dob`,`gender`,`mobile`,`location`,`status`) values ('owner.png',1,'logu','123','otpsendermessage@gmail.com','22/06/1999','male','9087654323','chennai','Activated');

/*Table structure for table `porequest` */

DROP TABLE IF EXISTS `porequest`;

CREATE TABLE `porequest` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `paname` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  `tkey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `Dstatus` varchar(200) DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `porequest` */

insert  into `porequest`(`id`,`user`,`email`,`mobile`,`paname`,`keyword`,`file`,`status`,`tkey`,`skey`,`Dstatus`) values (1,'logu','otpsendermessage@gmail.com',NULL,NULL,'Program details','Programming datas.txt','Accept','401B9DCA695421F9','null','Waiting');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `tkey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`sno`,`id`,`user`,`email`,`mobile`,`keyword`,`tkey`,`skey`,`file`) values (6,1,'logu','otpsendermessage@gmail.com','9087654323','Program details','A9833E13E1C8EAFF','2TXDo=A','Programming datas.txt'),(7,1,'logu','otpsendermessage@gmail.com','9087654323','Program details','401B9DCA695421F9','nWL%cV2N','Programming datas.txt');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `profile` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Deactivated'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`profile`,`id`,`user`,`pass`,`email`,`dob`,`gender`,`mobile`,`location`,`status`) values ('user.png',1,'arun','123','otpsendermessage@gmail.com','22/06/1998','male','9087654321','vadapalani','Activated');

/*Table structure for table `ureq` */

DROP TABLE IF EXISTS `ureq`;

CREATE TABLE `ureq` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ureq` */

/*Table structure for table `urequest` */

DROP TABLE IF EXISTS `urequest`;

CREATE TABLE `urequest` (
  `so` int(22) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  `tkey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `Dstatus` varchar(200) DEFAULT 'Waiting',
  KEY `so` (`so`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `urequest` */

insert  into `urequest`(`so`,`id`,`user`,`keyword`,`file`,`uid`,`uname`,`email`,`status`,`tkey`,`skey`,`Dstatus`) values (5,1,'logu','Program details','Programming datas.txt','1','arun','otpsendermessage@gmail.com','Accept','A9833E13E1C8EAFF','2TXDo=A','Delivery');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
