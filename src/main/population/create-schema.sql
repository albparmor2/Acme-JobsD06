
    create table `administrator` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `announcement` (
       `id` integer not null,
        `version` integer not null,
        `moment` datetime(6),
        `more_info` varchar(255),
        `text` varchar(1024),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `anonymous` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `application` (
       `id` integer not null,
        `version` integer not null,
        `justification` varchar(1024),
        `moment` datetime(6),
        `qualifications` varchar(1024),
        `reference` varchar(255),
        `skills` varchar(1024),
        `statement` varchar(1024),
        `status` integer,
        `job_id` integer not null,
        `worker_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `audit_record` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(1024),
        `creation` datetime(6),
        `status` integer,
        `title` varchar(255),
        `auditor_id` integer not null,
        `job_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `auditor` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `firm` varchar(255),
        `responsibility_statement` varchar(1024),
        primary key (`id`)
    ) engine=InnoDB;

    create table `auditor_request` (
       `id` integer not null,
        `version` integer not null,
        `firm` varchar(255),
        `responsibility_statement` varchar(1024),
        `status` integer,
        `authenticated_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `authenticated` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `challenge` (
       `id` integer not null,
        `version` integer not null,
        `bronze_description` varchar(1024),
        `bronze_reward` varchar(255),
        `deadline` datetime(6),
        `gold_description` varchar(1024),
        `gold_reward` varchar(255),
        `silver_description` varchar(1024),
        `silver_reward` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `commercial_banner` (
       `id` integer not null,
        `version` integer not null,
        `picture` varchar(255),
        `slogan` varchar(255),
        `url` varchar(255),
        `sponsor_id` integer not null,
        `brand` varchar(255),
        `credit_card_number` varchar(255),
        `cvv` varchar(255),
        `holder` varchar(255),
        `month` integer,
        `year` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `company_record` (
       `id` integer not null,
        `version` integer not null,
        `ceo` varchar(255),
        `activities` varchar(255),
        `contact_email` varchar(255),
        `contact_phone` varchar(255),
        `name` varchar(255),
        `sector` varchar(255),
        `stars` integer,
        `website` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `credit_card` (
       `id` integer not null,
        `version` integer not null,
        `brand` varchar(255),
        `credit_card_number` varchar(255),
        `cvv` varchar(255),
        `holder` varchar(255),
        `month` integer,
        `year` integer,
        `sponsor_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `customisation` (
       `id` integer not null,
        `version` integer not null,
        `spam_word` varchar(255),
        `threshold` double precision,
        primary key (`id`)
    ) engine=InnoDB;

    create table `duty` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(1024),
        `percentage` double precision,
        `title` varchar(255),
        `job_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `employer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `investor_record` (
       `id` integer not null,
        `version` integer not null,
        `investing_statement` varchar(1024),
        `name` varchar(255),
        `sector` varchar(255),
        `stars` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `job` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `description` varchar(1024),
        `more_info` varchar(255),
        `reference` varchar(255),
        `salary_amount` double precision,
        `salary_currency` varchar(255),
        `status` integer,
        `title` varchar(255),
        `employer_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `message` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(1024),
        `moment` datetime(6),
        `tags` varchar(255),
        `title` varchar(255),
        `authenticated_id` integer not null,
        `thread_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `non_commercial_banner` (
       `id` integer not null,
        `version` integer not null,
        `picture` varchar(255),
        `slogan` varchar(255),
        `url` varchar(255),
        `sponsor_id` integer not null,
        `jingle` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `participation` (
       `id` integer not null,
        `version` integer not null,
        `username` varchar(255),
        `participant_id` integer not null,
        `thread_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `shout` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `moment` datetime(6),
        `text` varchar(1024),
        primary key (`id`)
    ) engine=InnoDB;

    create table `sponsor` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `brand` varchar(255),
        `company` varchar(255),
        `credit_card_number` varchar(255),
        `cvv` varchar(255),
        `holder` varchar(255),
        `month` integer,
        `year` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `thread` (
       `id` integer not null,
        `version` integer not null,
        `moment` datetime(6),
        `title` varchar(255),
        `creator_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `user_account` (
       `id` integer not null,
        `version` integer not null,
        `enabled` bit not null,
        `identity_email` varchar(255),
        `identity_name` varchar(255),
        `identity_phone_area_code` varchar(255),
        `identity_phone_country_code` integer,
        `identity_phone_number` varchar(255),
        `identity_surname` varchar(255),
        `password` varchar(255),
        `username` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `worker` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `qualifications_record` varchar(1024),
        `skills_record` varchar(1024),
        primary key (`id`)
    ) engine=InnoDB;

    create table `hibernate_sequence` (
       `next_val` bigint
    ) engine=InnoDB;

    insert into `hibernate_sequence` values ( 1 );
create index IDXnhikaa2dj3la6o2o7e9vo01y0 on `announcement` (`moment`);

    alter table `application` 
       add constraint UK_ct7r18vvxl5g4c4k7aefpa4do unique (`reference`);
create index IDXof878cqun8l1ynh0ao94bw3au on `audit_record` (`status`);
create index IDXnr284tes3x8hnd3h716tmb3fr on `challenge` (`deadline`);

    alter table `credit_card` 
       add constraint UK_4cr95y27s8ti6otoyflmma6oy unique (`sponsor_id`);
create index IDXfdmpnr8o4phmk81sqsano16r on `job` (`deadline`);
create index IDX28ur9xm72oo1df9g14xhnh8h3 on `job` (`status`);

    alter table `job` 
       add constraint UK_7jmfdvs0b0jx7i33qxgv22h7b unique (`reference`);

    alter table `user_account` 
       add constraint UK_castjbvpeeus0r8lbpehiu0e4 unique (`username`);

    alter table `administrator` 
       add constraint FK_2a5vcjo3stlfcwadosjfq49l1 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `anonymous` 
       add constraint FK_6lnbc6fo3om54vugoh8icg78m 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `application` 
       add constraint `FKoa6p4s2oyy7tf80xwc4r04vh6` 
       foreign key (`job_id`) 
       references `job` (`id`);

    alter table `application` 
       add constraint `FKmbjdoxi3o93agxosoate4sxbt` 
       foreign key (`worker_id`) 
       references `worker` (`id`);

    alter table `audit_record` 
       add constraint `FKdcrrgv6rkfw2ruvdja56un4ji` 
       foreign key (`auditor_id`) 
       references `auditor` (`id`);

    alter table `audit_record` 
       add constraint `FKlbvbyimxf6pxvbhkdd4vfhlnd` 
       foreign key (`job_id`) 
       references `job` (`id`);

    alter table `auditor` 
       add constraint FK_clqcq9lyspxdxcp6o4f3vkelj 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `auditor_request` 
       add constraint `FKjonb5lt00rmb868h6gjdjh1to` 
       foreign key (`authenticated_id`) 
       references `authenticated` (`id`);

    alter table `authenticated` 
       add constraint FK_h52w0f3wjoi68b63wv9vwon57 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `commercial_banner` 
       add constraint FK_q9id3wc65gg49afc5tlr1c00n 
       foreign key (`sponsor_id`) 
       references `sponsor` (`id`);

    alter table `credit_card` 
       add constraint `FK31l5hvh7p1nx1aw6v649gw3rc` 
       foreign key (`sponsor_id`) 
       references `sponsor` (`id`);

    alter table `duty` 
       add constraint `FKs2uoxh4i5ya8ptyefae60iao1` 
       foreign key (`job_id`) 
       references `job` (`id`);

    alter table `employer` 
       add constraint FK_na4dfobmeuxkwf6p75abmb2tr 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `job` 
       add constraint `FK3rxjf8uh6fh2u990pe8i2at0e` 
       foreign key (`employer_id`) 
       references `employer` (`id`);

    alter table `message` 
       add constraint `FK3ny0h1379q528toyokq81noiu` 
       foreign key (`authenticated_id`) 
       references `authenticated` (`id`);

    alter table `message` 
       add constraint `FK28hjkn063wrsjuiyyf8sm3s2v` 
       foreign key (`thread_id`) 
       references `thread` (`id`);

    alter table `non_commercial_banner` 
       add constraint FK_2l8gpcwh19e7jj513or4r9dvb 
       foreign key (`sponsor_id`) 
       references `sponsor` (`id`);

    alter table `participation` 
       add constraint `FKl3oifwo53p0xo35t6hlositwc` 
       foreign key (`participant_id`) 
       references `authenticated` (`id`);

    alter table `participation` 
       add constraint `FKk6j425rhm4ahsi6cf2bg2um4l` 
       foreign key (`thread_id`) 
       references `thread` (`id`);

    alter table `sponsor` 
       add constraint FK_20xk0ev32hlg96kqynl6laie2 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `thread` 
       add constraint `FKi6qpt5u0ti53aogdftkunyp6r` 
       foreign key (`creator_id`) 
       references `authenticated` (`id`);

    alter table `worker` 
       add constraint FK_l5q1f33vs2drypmbdhpdgwfv3 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);
