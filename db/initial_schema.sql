CREATE TABLE till_requests (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  priority int NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE requests (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  till_number int NOT NULL,
  till_request_id bigint(20) default NULL,
  time_stamp timestamp not null default,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter table requests add done boolean not null;