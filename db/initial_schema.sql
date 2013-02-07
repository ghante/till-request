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
  time_stamp timestamp not null default CURRENT_TIMESTAMP,
  done boolean not null,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into till_requests(name, priority) values ('Age Verify',1);
insert into till_requests(name, priority) values ('TV License',2);
insert into till_requests(name, priority) values ('Spillage',3);
insert into till_requests(name, priority) values ('Change',3);
insert into till_requests(name, priority) values ('Toilet Break',4);