-- User [User]
create table `user` (
   `user_id`  varchar(255)  not null,
   `secret_key`  varchar(255),
  primary key (`user_id`)
);


-- MyFriends [cls3]
create table `myfriends` (
   `oid`  integer  not null,
   `name`  varchar(255),
   `email`  varchar(255),
  primary key (`oid`)
);


-- Class Services Mapping
create table WR_DELETE_HISTORY(
  `OID`  integer  not null,
  `OBJECT_ID` varchar(200) not null,
  `CLASS_ID` varchar(32) not null,
  `DELETED_AT` datetime not null,
  primary key (`OID`))
ENGINE=InnoDB;

create index IDX_WR_CLASS_ID on WR_DELETE_HISTORY(`CLASS_ID`);
create index IDX_WR_OBJECT_ID on WR_DELETE_HISTORY(`DELETED_AT`);


