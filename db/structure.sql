CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "timeline_keeper_admin_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "index_timeline_keeper_admin_users_on_email" ON "timeline_keeper_admin_users" ("email");
CREATE UNIQUE INDEX "index_timeline_keeper_admin_users_on_reset_password_token" ON "timeline_keeper_admin_users" ("reset_password_token");
CREATE TABLE "timeline_keeper_events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "headline" varchar(255), "text" text, "latitude" varchar(255), "longitude" varchar(255), "event_year" varchar(255), "event_month" varchar(255), "event_day" varchar(255), "startDate" datetime, "endDate" datetime, "media" varchar(255), "credit" varchar(255), "caption" varchar(255), "thumbnail" varchar(255), "media_filename" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "timeline_keeper_timelines" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "headline" varchar(255), "startDate" datetime, "text" text, "media" varchar(255), "credit" varchar(255), "caption" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "timeline_keeper_timeline_events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "timeline_id" integer, "event_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_timeline_keeper_timeline_events_on_timeline_id" ON "timeline_keeper_timeline_events" ("timeline_id");
CREATE INDEX "index_timeline_keeper_timeline_events_on_event_id" ON "timeline_keeper_timeline_events" ("event_id");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE TABLE "active_admin_comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "resource_id" varchar(255) NOT NULL, "resource_type" varchar(255) NOT NULL, "author_id" integer, "author_type" varchar(255), "body" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "namespace" varchar(255));
CREATE INDEX "index_admin_notes_on_resource_type_and_resource_id" ON "active_admin_comments" ("resource_type", "resource_id");
CREATE INDEX "index_active_admin_comments_on_namespace" ON "active_admin_comments" ("namespace");
CREATE INDEX "index_active_admin_comments_on_author_type_and_author_id" ON "active_admin_comments" ("author_type", "author_id");
INSERT INTO schema_migrations (version) VALUES ('20140222175122');

INSERT INTO schema_migrations (version) VALUES ('20140222175123');

INSERT INTO schema_migrations (version) VALUES ('20140222175124');

INSERT INTO schema_migrations (version) VALUES ('20140222175125');

INSERT INTO schema_migrations (version) VALUES ('20140223053230');

INSERT INTO schema_migrations (version) VALUES ('20140223053248');

INSERT INTO schema_migrations (version) VALUES ('20140223053249');