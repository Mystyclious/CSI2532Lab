CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);
INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20220227135600-create-athletes.sql', '2022-02-27 13:56:00');
INSERT INTO schema_migrations (migration, migrated_at) VALUES 