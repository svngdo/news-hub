create table if not exists users_roles
(
    user_id bigint not null,
    role_id int    not null,
    constraint pk_user_role primary key (user_id, role_id),
    constraint fk_user foreign key (user_id) references users (id) on delete cascade,
    constraint fk_role foreign key (role_id) references roles (id) on delete cascade
)