create table if not exists roles
(
    id   int         not null,
    name varchar(50) not null,
    constraint pk_role_id primary key (id),
    constraint unique_role_name unique (name)
)