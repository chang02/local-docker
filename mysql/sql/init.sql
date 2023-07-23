create database if not exists `skeleton`;

use skeleton;

create table if not exists post
(
    `id`         bigint(20) unsigned not null auto_increment,
    `title`      varchar(255)        not null,
    `content`    text                not null,
    `created_at` datetime(6)         not null default current_timestamp(6),
    primary key (`id`)
)