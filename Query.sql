delimiter $$

CREATE DATABASE `dbvaksin` /*!40100 DEFAULT CHARACTER SET utf8 */$$

delimiter $$

CREATE TABLE `tbl_dokter` (
  `kode` varchar(3) NOT NULL,
  `nama` varchar(100) DEFAULT '-',
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_dtl` (
  `noVaksin` varchar(10) NOT NULL,
  `jnsVaksin` varchar(4) DEFAULT '-',
  `dosis` varchar(45) DEFAULT '-',
  `tgl` varchar(45) DEFAULT '-',
  `keterangan` varchar(200) DEFAULT '-',
  `urut` int(11) NOT NULL,
  `usrInsert` varchar(45) DEFAULT NULL,
  `usrUpdate` varchar(45) DEFAULT NULL,
  `tglInsert` datetime DEFAULT NULL,
  `tglUpdate` datetime DEFAULT NULL,
  PRIMARY KEY (`urut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_hdr` (
  `noVaksin` varchar(10) NOT NULL,
  `tgl` datetime DEFAULT NULL,
  `dokter` varchar(4) DEFAULT NULL,
  `noRM` varchar(11) DEFAULT NULL,
  `usrInsert` varchar(50) DEFAULT NULL,
  `usrUpdate` varchar(45) DEFAULT NULL,
  `tglInsert` datetime DEFAULT NULL,
  `tglUpdate` datetime DEFAULT NULL,
  PRIMARY KEY (`noVaksin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_jenis` (
  `kode` varchar(4) NOT NULL,
  `nama` varchar(100) DEFAULT '-',
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_user` (
  `user` varchar(10) NOT NULL DEFAULT '-',
  `nama` varchar(50) DEFAULT '-',
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

