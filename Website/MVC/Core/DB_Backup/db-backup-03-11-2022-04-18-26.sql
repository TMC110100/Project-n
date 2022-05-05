DROP TABLE IF EXISTS bantin;

CREATE TABLE `bantin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tenbantin` varchar(100) NOT NULL,
  `id_loaibantin` int(11) NOT NULL,
  `IDNhom` int(11) NOT NULL,
  `mota` varchar(300) NOT NULL,
  `motaDetails` longtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO bantin VALUES("2","Tăng giới hạn dung lượng file PST lên 80 GB trong Outlook","13","1","Có một số mô hình triển khai mail trên Outlook sử dụng đạt giới hạn dung lượng là 50 GB và nếu như bạn chuyển sang một data mới sẽ mất Rule Mail. Đó là lý do chúng ta phải tăng giới hạn dung lượng file PST trong Outlook với mức tối đa là 80 GB.
INSERT INTO bantin VALUES("5","Format định dạng file csv","13","1","Cách format định dạnh file csv sang excel dễ đọc","<p><strong>Bước 1:</strong>&nbsp;Tiến h&agrave;nh Open( mở ) Excel 2016 từ giao diện m&agrave;n h&igrave;nh ch&iacute;nh hoặc v&agrave;o Start ( cửa sổ windows tr&ecirc;n win 10) =&gt; g&otilde; Excel 2016 v&agrave; click đ&uacute;p v&agrave;o chương tr&igrave;nh.</p>
INSERT INTO bantin VALUES("6","Không Mở Được File Đính Kèm Trong Outlook","13","1","Nguyên nhân là mất quyền trên thư mục temp. Cách khắc phục đơn giản nhất là thay đổi lại đường dẫn vào thư mục khác.","<p>&nbsp;</p>


DROP TABLE IF EXISTS comment;

CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `noidung` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS loaibantin;

CREATE TABLE `loaibantin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(100) NOT NULL,
  `ID_NhomBanTin` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO loaibantin VALUES("1","Bóng đá","1");
INSERT INTO loaibantin VALUES("2","Bất Động Sản","1");
INSERT INTO loaibantin VALUES("3","Chứng Khoán","1");
INSERT INTO loaibantin VALUES("4","Thể Thao","1");
INSERT INTO loaibantin VALUES("5","Giải trí","1");
INSERT INTO loaibantin VALUES("6","Tài Chính","1");
INSERT INTO loaibantin VALUES("13","Windows 10","1");


DROP TABLE IF EXISTS nhom;

CREATE TABLE `nhom` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TenNhom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO nhom VALUES("1","Windows");


DROP TABLE IF EXISTS user;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `age` date DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `token` varchar(300) DEFAULT NULL,
  `permission` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO user VALUES("4","tmc110100","$2y$10$6v3dF8Qer910ta6AXBQ1jeHSknomK13BPk6O8rFp0Zq43O/uxcxXW","tmc110100@gmail.com","Cường","Cường","Go vap","2000-01-11","356158414","1","7b8231bce4cda6dd876e736c4339b6f01639929634","1");
INSERT INTO user VALUES("5","tranminhcuong","$2y$10$RMOK3IHjWpTte226nCgh2eHw5vom81Xb6OyqoG1VVpi4Kpq/nq/KS","tranminhcuong1101@gmail.com","Trần Minh Cường","Cuong","Go Vap","2000-11-01","35158414","1","bf4d54b2d57a36801a7dea60a28701b31641660891","0");
INSERT INTO user VALUES("6","1101cuong","$2y$10$R7wLRgihNcQ/qpVhOKmiV.QSOcZkS5TgspezF6e.HH/6dV2fakyO6","cuongtm.it@gmail.com","Trần Minh Cường","Cuong","ád","2022-03-31","361841","1","ca546736b2f4fa3e3e837439ae3a38171646623671","0");
INSERT INTO user VALUES("7"," 1c+asd","$2y$10$CevaDGOQWirRwvlVc9LwceQ.AqNvB6hukpCrdAp10lreEfa5SGDmO","tmsad@gmail.com","Trần Minh Cường","Cuong","123","0000-00-00","123","0","6a843aa0ae259065763c60b9aa1945a01646624710","0");

