PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
CREATE TABLE img (img_id integer primary key,filename text);
CREATE TABLE video (video_id integer primary key,filename text);
CREATE TABLE tag (tag_id integer primary key,tag_name text);
CREATE TABLE video_tags (video_id integer, tag_id integer, FOREIGN KEY(video_id) REFERENCES video(video_id), FOREIGN KEY(tag_id) REFERENCES tag(tag_id)ON UPDATE SET NULL ON DELETE SET NULL); 
CREATE TABLE img_tags (img_id integer, tag_id integer, FOREIGN KEY(img_id) REFERENCES img(img_id), FOREIGN KEY(tag_id) REFERENCES tag(tag_id)ON UPDATE SET NULL ON DELETE SET NULL);

INSERT INTO "img" VALUES(1,'mountain.jpg');
INSERT INTO "img" VALUES(2,'person.jpg');
INSERT INTO "img" VALUES(3,'animal.jpg');
INSERT INTO "img" VALUES(4,'abstract.jpg');
INSERT INTO "img" VALUES(5,'computer.jpg');

INSERT INTO "video" VALUES(1,'horses.mp4');
INSERT INTO "video" VALUES(2,'festival.mp4');
INSERT INTO "video" VALUES(3,'danceoff.mp4');
INSERT INTO "video" VALUES(4,'hike.mp4');
INSERT INTO "video" VALUES(5,'aqarium.mp4');

INSERT INTO "tag" VALUES(1,'landscape');
INSERT INTO "tag" VALUES(2,'nature');
INSERT INTO "tag" VALUES(3,'portrait');
INSERT INTO "tag" VALUES(4,'closeup');
INSERT INTO "tag" VALUES(5,'bad_lightning');
INSERT INTO "tag" VALUES(6,'high_res');
INSERT INTO "tag" VALUES(7,'person');
INSERT INTO "tag" VALUES(8,'animal');
INSERT INTO "tag" VALUES(9,'dog');
INSERT INTO "tag" VALUES(10,'cat');

INSERT INTO "img_tags" VALUES(1,1);
INSERT INTO "img_tags" VALUES(2,2);
INSERT INTO "img_tags" VALUES(3,3);
INSERT INTO "img_tags" VALUES(4,4);
INSERT INTO "img_tags" VALUES(5,5);

INSERT INTO "video_tags" VALUES(1,1);
INSERT INTO "video_tags" VALUES(2,2);
INSERT INTO "video_tags" VALUES(3,3);
INSERT INTO "video_tags" VALUES(4,4);
INSERT INTO "video_tags" VALUES(5,5);

COMMIT;