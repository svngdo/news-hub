create table if not exists users
(
    id         bigint generated always as identity,
    username   varchar(50)  not null,
    email      varchar(100) not null,
    password   varchar(255) not null,
    created_at timestamp without time zone default current_timestamp,
    updated_at timestamp without time zone default current_timestamp,
    constraint pk_user_id primary key (id),
    constraint unique_username unique (username),
    constraint unique_email unique (email),
    constraint chk_email_format check ( email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$' ),
    constraint chk_username_length check ( char_length(username) >= 3 and char_length(username) <= 50 ),
    constraint chk_password_length check ( char_length(password) >= 6 )
)
