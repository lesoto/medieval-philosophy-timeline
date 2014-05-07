﻿DROP TABLE IF EXISTS "admin_users";
CREATE TABLE "admin_users" ("id" SERIAL PRIMARY KEY NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" timestamp, "last_sign_in_at" timestamp, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" timestamp, "updated_at" timestamp);
INSERT INTO "admin_users" VALUES(1,'admin@example.com','$2a$10$NwONS4PxQ6SxCX2sqEi0YOGdxfuYVd0GhZgt6nnMX5It/OVJVTuq2',NULL,NULL,'2014-04-19 04:22:31.516104',2,'2014-04-19 04:22:31.532438','2014-02-25 03:07:43.276305','127.0.0.1','127.0.0.1','2014-02-25 03:02:06.641772','2014-04-19 04:22:31.536549');
DROP TABLE IF EXISTS "histories";
CREATE TABLE "histories" ("id" SERIAL PRIMARY KEY  NOT NULL ,"headline" varchar(255),"startdate" timestamp,"enddate" timestamp,"content" text DEFAULT (null) ,"media" varchar(255),"mediacaption" varchar(255),"location" varchar(255),"location_original" varchar(255),"mediacredit" varchar(255),"created_at" timestamp,"updated_at" timestamp);
INSERT INTO "histories" VALUES(1,'Peter Damian','1007-01-01 00:00:00.000000','1072-01-01 00:00:00.000000','Saint Peter Damian, O.S.B. (Petrus Damiani, also Pietro Damiani or Pier Damiani; c. 1007 – February 21/22, 1072) was a reforming monk in the circle of Pope Gregory VII and a cardinal. In 1823, he was declared a Doctor of the Church. Dante placed him in one of the highest circles of Paradiso as a great predecessor of Saint Francis of Assisi.','http://upload.wikimedia.org/wikipedia/commons/4/4e/Peter_Damian_bust.JPG','Tuscany, Italy','43.4586541,11.1389204','41.29254,12.573465','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(2,'Anselm','1033-01-01 00:00:00.000000','1109-01-01 00:00:00.000000','Anselm of Canterbury (c. 1033 – 21 April 1109), also called of Aosta for his birthplace, and of Bec for his home monastery, was a Benedictine monk, a philosopher, and a prelate of the Church who held the office of Archbishop of Canterbury from 1093 to 1109. Called the founder of scholasticism, he has been a major influence in Western theology and is famous as the originator of the ontological argument for the existence of God and the satisfaction theory of atonement.','http://www.iep.utm.edu/wp-content/media/anselm.jpg','Canterbury, England','51.2800275,1.0802533','41.29254,12.573465','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(3,'William of Champeaux','1070-01-01 00:00:00.000000','1122-01-01 00:00:00.000000','Guillaume de Champeaux (c. 1070 – 18 January 1121 in Châlons-en-Champagne), known in English as William of Champeaux and Latinised to Gulielmus de Campellis , was a French philosopher and theologian.',NULL,'Champeaux, France','48.5860581,2.8066888','46.211401, 2.20936','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(4,'Peter Abelard','1079-01-01 00:00:00.000000','1142-01-01 00:00:00.000000','Peter Abelard (/ˈæb.ə.lɑːrd/; Latin: Petrus Abaelardus or Abailardus; French: Pierre Abélard, pronounced: [a.beˈlaːʁ]; 1079 – 21 April 1142) was a medieval French scholastic philosopher, theologian and preeminent logician. The story of his affair with and love for Heloise has become legendary. The Chambers Biographical Dictionary describes him as "the keenest thinker and boldest theologian of the 12th Century".','http://upload.wikimedia.org/wikipedia/commons/3/3c/Abelard.jpg','Paris, France','48.8565056,2.3521334','46.211401, 2.20936','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(5,'Robert Grosseteste','1168-01-01 00:00:00.000000','1253-01-01 00:00:00.000000','Robert Grosseteste ( /ˈɡroʊstɛst/ grohs-test) or Grossetete (/ˈɡroʊsteɪt/ grohs-tayt; c. 1175 – 9 October 1253) was an English statesman, scholastic philosopher, theologian, scientist and Bishop of Lincoln. He was born of humble parents at Stradbroke in Suffolk. A.C. Crombie calls him "the real founder of the tradition of scientific thought in medieval Oxford, and in some ways, of the modern English intellectual tradition".','http://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Bishop_Robert_Grosseteste%2C_1896_%28crop%29.jpg/220px-Bishop_Robert_Grosseteste%2C_1896_%28crop%29.jpg','Lincoln, England','53.2336131,-0.5392104','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(6,'Albertus Magnus','1193-01-01 00:00:00.000000','1274-01-01 00:00:00.000000','Albertus Magnus, O.P. (1193/1206 – November 15, 1280), also known as Albert the Great and Albert of Cologne, is a Catholic saint. He was a German Dominican friar and a bishop who achieved fame for his comprehensive knowledge of and advocacy for the peaceful coexistence of science and religion. Those such as James A. Weisheipl and Joachim R. Söder have referred to him as the greatest German philosopher and theologian of the Middle Ages, an opinion supported by contemporaries such as Roger Bacon. The Catholic Church honours him as a Doctor of the Church, one of only 35 persons with that honor.',NULL,'Cologne, Germany','50.9374863,6.9580232','51.164175, 10.454145','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(7,'Adam Wodeham','1295-01-01 00:00:00.000000','1358-01-01 00:00:00.000000','Born near Southampton, England in 1298, Adam of Wodeham (1298–1358) was a philosopher and theologian. Currently, Wodeham is best known for having been a student of William Ockham and for his interpretations of John Duns Scotus. Despite this associational fame, Wodeham was an influential thinker who made valuable philosophical contributions during his life.',NULL,'Wodeham, England','51.5197497,-0.0627905','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(8,'Adam Marsh','1200-01-01 00:00:00.000000','1259-01-01 00:00:00.000000','Adam Marsh (Adam de Marisco) (c. 1200 – 18 November 1259) was an English Franciscan, scholar and theologian.',NULL,'England','52.7955,-0.540522271821464','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(9,'William of Sherwood','1200-01-01 00:00:00.000000','1265-01-01 00:00:00.000000','William of Sherwood (or Shyreswood, Shireswood) (1190–1249) was a medieval English Scholastic philosopher, logician and teacher.
Little is known of his life, but he is thought to have studied in Paris, as a master at Oxford in 1252, treasurer of Lincoln from 1254/8 onwards, and a rector of Aylesbury.
He was the author of two books which were an important influence on the development of Scholastic logic: Introductiones in Logicam (Introduction to Logic), and Syncategoremata. These are the first known works to deal in a systematic way with what is now called supposition theory, known in William''s time as the logica moderna.',NULL,'Sherwood, England','52.9812277,-1.1503521','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(10,'Roger Bacon','1214-01-01 00:00:00.000000','1294-01-01 00:00:00.000000','Roger Bacon, O.F.M. (c. 1214–1294), (scholastic accolade Doctor Mirabilis, meaning "wonderful teacher"), was an English philosopher and Franciscan friar who placed considerable emphasis on the study of nature through empirical methods. He is sometimes credited, mainly starting in the 19th century, as one of the earliest European advocates of the modern scientific method inspired by the works of Aristotle and later Islamic works, such as the works of Muslim scientist Alhazen. However, more recent reevaluations emphasize that he was essentially a medieval thinker, with much of his "experimental" knowledge obtained from books, in the scholastic tradition. A survey of the reception of Bacon''s work over centuries found that it often reflects the concerns and controversies central to the receivers.','http://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Roger-bacon-statue.jpg/220px-Roger-bacon-statue.jpg','London, England','51.5072759,-0.1276597','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(11,'Robert Kilwardby','1215-01-01 00:00:00.000000','1279-01-01 00:00:00.000000','Robert Kilwardby (c. 1215–11 September 1279) was an Archbishop of Canterbury in England and as well as a cardinal. Kilwardby was the first member of a mendicant order to attain a high ecclesisatical office in the English Church.','http://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Robert_Kilwardby.jpg/220px-Robert_Kilwardby.jpg','Canterbury, England','51.2800275,1.0802533','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(12,'Walter of Bruges','1220-01-01 00:00:00.000000','1307-01-01 00:00:00.000000','Walter of Bruges (Gualterus Brugensis OFM, Gualterus de Brugge, Gauthier de Bruges OM, Gualterus de Brugis, Gualterus de Brüge, Walter von Brügge) was a Franciscan theologian, who flourished at the University of Paris 1267-9.',NULL,'Bruges, Belgium','51.2318283,3.20778222299101','50.50099, 4.47677','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(13,'Martin of Dacia','1220-01-01 00:00:00.000000','1304-01-01 00:00:00.000000','Martin of Dacia (Martinus Dacus, Martinus de Dacia, Martin de Dacie, Morten Mogensen, 1220-1304) was a Danish scholar, master of arts and theology at the University of Paris around 1250–88, and the author of Modi significandi, an influential treatise on grammar. He held a prebendary as canon of the Ribe Cathedral in the Ribe diocese. Later he became Rector of the University of Paris.',NULL,'Ribe, Denmark','55.3284036,8.7647838','56.15554, 11.63398','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(14,'John Pecham','1230-01-01 00:00:00.000000','1292-01-01 00:00:00.000000','John Peckham (or Pecham) (c. 1230 – 8 December 1292) was Archbishop of Canterbury in the years 1279–1292. He was a native of Sussex who was educated at Lewes Priory and became a Franciscan friar about 1250. He studied at the University of Paris under Bonaventure, where he would later teach theology. From his teaching, he came into conflict with Thomas Aquinas, whom he debated on two occasions. Known as a conservative theologian, he opposed Aquinas'' views on the nature of the soul. Peckham also studied optics and astronomy, and his studies in those subjects were influenced by Roger Bacon.','http://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Canterburycathedraljohnpeckhamtombeffigy.jpg/220px-Canterburycathedraljohnpeckhamtombeffigy.jpg','Lewes, England','50.8741265,0.0121129','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(15,'Ulrich of Strasbourg','1220-01-01 00:00:00.000000','1277-01-01 00:00:00.000000','Ulrich of Strasburg (c. 1225–1277) was a German Dominican theologian and scholastic philosopher. A disciple of Albertus Magnus, he is known for his Summa de Bono, written 1265 to 1272.',NULL,'Strasbourg, Germany','48.4166227,9.5357837','51.164175, 10.454145','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(16,'Ramon Lull','1232-01-01 00:00:00.000000','1316-01-01 00:00:00.000000','Ramon Llull (Catalan: [rəˈmon ˈʎuʎ]; ca. 1232 – ca. 1315) (Anglicised Raymond Lully, Raymond Lull; in Latin Raimundus or Raymundus Lullus or Lullius) was a Majorcan writer and philosopher, logician and a Franciscan tertiary. He wrote the first major work of Catalan literature. Recently-surfaced manuscripts show him to have anticipated by several centuries prominent work on elections theory. He is sometimes considered a pioneer of computation theory, especially given his influence on Gottfried Leibniz. Llull is well known also as a glossator of Roman Law.','http://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Ramon_Llull.jpg/220px-Ramon_Llull.jpg','Majorca','39.6594496,2.986239','39.613535, 2.91156','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(17,'Thomas Aquinas','1224-01-01 00:00:00.000000','1274-01-01 00:00:00.000000','Saint Thomas Aquinas, O.P. ( /əˈkwaɪnəs/ ə-kwy-nəs; 1225 – 7 March 1274), also Thomas of Aquin or Aquino, was an Italian Dominican priest of the Roman Catholic Church, and an immensely influential philosopher and theologian in the tradition of scholasticism, within which he is also known as The "Dumb Ox" "Angelic Doctor", Doctor Communis, and/or Doctor Universalis.[5] "Aquinas" is both a Latin demonym for a resident of Aquino, his place of birth, and a surname, as his family was among the noblest families of the Kingdom of Naples, with the title of "counts d''Aquino". He was the foremost classical proponent of natural theology, and the father of Thomism. His influence on Western thought is considerable, and much of modern philosophy was conceived in development or refutation of his ideas, particularly in the areas of ethics, natural law, metaphysics, and political theory.','http://upload.wikimedia.org/wikipedia/commons/c/cd/Gentile_da_Fabriano_052.jpg','Monte Cassino, Italy','41.490886,13.8137758366278','41.29254, 12.573465','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(18,'Roger Marston','1235-01-01 00:00:00.000000','1303-01-01 00:00:00.000000','Roger Marston (Rogerus de Marston) (died c. 1303) was an English Franciscan scholastic philosopher and theologian.
He studied under John Pecham in Paris, in the years around 1270, and probably also at Oxford a few years later, during the time he was a pupil of John Pecham he was a fellow student with Matthew of Aquasparta. He generally followed Pecham''s views on the Eucharist,. He regarded time as absolute',NULL,'England','52.7955,-0.540522271821464','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(19,'Siger of Brabant','1240-01-01 00:00:00.000000','1280-01-01 00:00:00.000000','Siger of Brabant (Sigerus, Sighier, Sigieri or Sygerius de Brabantia; c. 1240 – 1280s) was a 13th century philosopher from the southern Low Countries who was an important proponent of Averroism. He was considered a radical by the conservative members of the Roman Catholic Church, but it is suggested that he played as important a role as his contemporary Thomas Aquinas in the shaping of Western attitudes towards faith and reason','http://upload.wikimedia.org/wikipedia/commons/b/bf/Dante_Pd10_Kopenhagen_MS_Thott_411.2.jpg','Brabant, Belgium','50.8790369,4.7014992',NULL,'Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(20,'Giles of Rome','1243-01-01 00:00:00.000000','1316-01-01 00:00:00.000000','Giles of Rome (Latin Ægidius Romanus, or in Italian Egidio Colonna) (c. 1243, Rome – 22 December 1316, Avignon), was an archbishop of Bourges who was famed for his logician commentary on the Organon by Aristotle. Giles was styled Doctor Fundatissimus ("Best-Grounded Teacher") by Pope Benedict XIV. He was Prior General of the Augustinian order, and also authored two other important works, De Ecclesiastica Potestate, a major text of early 14th century papalism, and De Regimine Principum, a guide book for princes.','http://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Filip4_Gilles_de_Rome.jpg/220px-Filip4_Gilles_de_Rome.jpg','Rome, Italy','41.8932575,12.4830619','41.29254, 12.573465','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(21,'Peter Olivi','1248-01-01 00:00:00.000000','1298-01-01 00:00:00.000000','Peter John Olivi, in his native French Pierre Jean Olivi and also Pierre Déjean, (1248 - March 14, 1298) was a Franciscan theologian who, although he died professing the faith of the Roman Catholic Church, became a controversial figure in the arguments surrounding poverty at the beginning of the 14th century. In large part, this was due to his view that the Franciscan vow of poverty also entailed usus pauper (i.e., ''poor'' or ''restricted'' use of goods); while contemporary Franciscans generally agreed that usus pauper was important to the Franciscan way of life, they disagreed that it was part of their vow of poverty. His support of the extreme view of ecclesiastical poverty played a part in the ideology of the groups coming to be known as the Spiritual Franciscans or Fraticelli.',NULL,'France','46.603354,1.8883335','46.211401, 2.20936','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(22,'Thomas of Sutton','1250-01-01 00:00:00.000000','1315-01-01 00:00:00.000000','Thomas of Sutton (died after 1315) was an English Dominican theologian, an early Thomist. He wrote a large number of works, in some of which he opposed Duns Scotus.
He was ordained as deacon in 1274 by Walter Giffard, and joined the Dominicans in the 1270s; he may have been a Fellow of Merton College, Oxford before that. He became doctor of theology in 1282.[4].',NULL,'Sutton, England','51.360398,-0.1906996','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(23,'Peter of Auvergne','1250-01-01 00:00:00.000000','1304-01-01 00:00:00.000000','Peter of Auvergne (died 1304) was a French philosopher and theologian.
He was a canon of Paris; some biographers have thought that he was Bishop of Clermont, because a Bull of Boniface VIII of the year 1296 names as canon of Paris a certain Peter of Croc (Cros), already canon of Clermont; but it is more likely that they are distinct. Peter of Auvergne was in Paris in 1301, and, according to several accounts, was a pupil of Thomas Aquinas. In 1279, while the various nations of the University of Paris were quarrelling about the rectorship, Simon de Brion, papal legate, appointed Peter of Auvergne, to that office; in 1296 he was elected to it.',NULL,'Auvergne, France','45.3548759,3.195472','46.211401, 2.20936','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(24,'Simon of Faversham','1260-01-01 00:00:00.000000','1306-01-01 00:00:00.000000','Simon of Faversham (also Simon Favershamensis, Simon de Faverisham, Simon von Faversham, or Simon Anglicus; c.1260–1306) was an English medieval scholastic philosopher and later a university chancellor.
Simon of Faversham was born in Faversham, Kent, and educated at Oxford, receiving a Master of Arts degree. He probably taught in Paris during the 1280s. His philosophical work consists almost entirely of commentaries on Aristotle''s works.[citation needed] He was made Chancellor of Oxford University in January 1304 until his death in 1306.',NULL,'Faversham, England','51.3144088,0.8911894','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(25,'Henry of Ghent','1217-01-01 00:00:00.000000','1293-01-01 00:00:00.000000','Henry of Ghent (c. 1217–1293), scholastic philosopher, known as Doctor Solemnis (the Solemn Doctor), also known as Henricus de Gandavo and Henricus Gandavensis, was born in the district of Mude, near Ghent, and died at Tournai (or Paris). Between the death of Thomas Aquinas in 1274 and the arrival of Duns Scotus in the early 14th century he was the leading Augustinian.','http://philosophy.unca.edu/sites/philosophy.unca.edu/files/images/henry2.gif','Ghent, Belgium','51.0558119,3.7239194','50.50099, 4.47677','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(26,'Hervaeus Natalis','1260-01-01 00:00:00.000000','1323-01-01 00:00:00.000000','Hervaeus Natalis (c.1260, Nédellec, diocese of Tréguier, Brittany-1323) was a Dominican theologian, the 14th Master of the Dominicans, and the author of a number of works on philosophy and theology. Among his many writings may be included the Summa Totius Logicae, an opusculum once attributed to Thomas Aquinas.',NULL,'Treguier, France','48.784201,-3.2319779','46.211401, 2.20936','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(27,'Duns Scotus','1265-01-01 00:00:00.000000','1308-01-01 00:00:00.000000','John (Johannes, Ioannes) Duns Scotus, O.F.M. (c. 1266 – 8 November 1308) is generally reckoned to be one of the three most important philosopher-theologians of the High Middle Ages. Scotus has had considerable influence on both Catholic and secular thought. The doctrines for which he is best known are the "univocity of being," that existence is the most abstract concept we have, applicable to everything that exists; the formal distinction, a way of distinguishing between different aspects of the same thing; and the idea of haecceity, the property supposed to be in each individual thing that makes it an individual. Scotus also developed a complex argument for the existence of God, and argued for the Immaculate conception of Mary.','http://upload.wikimedia.org/wikipedia/commons/1/16/JohnDunsScotus.jpg','Duns, Scotland','55.7779295,-2.3438852','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(28,'Radulphus Brito','1270-01-01 00:00:00.000000','1320-01-01 00:00:00.000000','Radulphus Brito (died 1320) was an influential grammarian, based in Paris. He is usually identified as Raoul le Breton, though this is apparently disputed by some. Besides works of grammatical speculation — he was one of the Modistae — he wrote on Aristotle, Boethius and Priscian. Radulphus was Master of arts in the University of Paris in 1296, and joined the theology faculty in 1311. Very few of his works are edited, although he was a prolific and apparently influential writer. He was one of a group of grammarians called the modistae or modists who flourished around Paris from about 1260 to 1310, so-called because they wrote on the mode of signifying.',NULL,'Paris, France','48.8565056,2.3521334','46.211401, 2.20936','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(29,'William of Alnwick','1275-01-01 00:00:00.000000','1333-01-01 00:00:00.000000','William of Alnwick (c. 1275 – March 1333) was a Franciscan friar and theologian, and bishop of Giovinazzo, who took his name from Alnwick in Northumberland.',NULL,'Alnwick, England','55.4135412,-1.7072797','52.84145, -2.30546','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(30,'William of Ockham','1285-01-01 00:00:00.000000','1347-01-01 00:00:00.000000','William of Ockham ( /ˈɒkəm/; also Occam, Hockham, or several other spellings; c. 1288 – c. 1348) was an English Franciscan friar and scholastic philosopher, who is believed to have been born in Ockham, a small village in Surrey. He is considered to be one of the major figures of medieval thought and was at the centre of the major intellectual and political controversies of the fourteenth century. Although he is commonly known for Occam''s razor, the methodological principle that bears his name, William of Ockham also produced significant works on logic, physics, and theology. In the Church of England, his day of commemoration is 10 April.','http://upload.wikimedia.org/wikipedia/commons/thumb/7/70/William_of_Ockham.png/220px-William_of_Ockham.png','Ockham, Surrey','51.2985631,-0.4599701','51.298946, -0.464498','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
INSERT INTO "histories" VALUES(31,'Francis of Meyronnes','1288-01-01 00:00:00.000000','1328-01-01 00:00:00.000000','Francis of Mayrone (Franciscus de Mayronis) (c. 1280–1328) was a French scholastic philosopher. He was a distinguished pupil of Duns Scotus, whose teaching (Scotism) he usually followed. He acquired a great reputation for ability in discussion at the Sorbonne, and was known as the Doctor Illuminatus ''Enlightened teacher'', as Magister Acutus or Doctor acutus, and as Magister abstractionum ''Master of abstractions''.',NULL,'Sorbonne, Paris','48.8497477,2.3435781','46.890578, 6.726533','Wikipedia','2014-02-07 00:00:00.000000','2014-02-23 00:00:00.000000');
DROP TABLE IF EXISTS "schema_migrations";
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20140222175122');
INSERT INTO "schema_migrations" VALUES('20140222175123');
INSERT INTO "schema_migrations" VALUES('20140222175124');
INSERT INTO "schema_migrations" VALUES('20140222175125');
INSERT INTO "schema_migrations" VALUES('20140223053230');
INSERT INTO "schema_migrations" VALUES('20140223053248');
INSERT INTO "schema_migrations" VALUES('20140223053249');
INSERT INTO "schema_migrations" VALUES('20131005165733');
INSERT INTO "schema_migrations" VALUES('20140225030140');
INSERT INTO "schema_migrations" VALUES('20140225030144');
CREATE UNIQUE INDEX "index_admin_users_on_email" ON "admin_users" ("email");
CREATE UNIQUE INDEX "index_admin_users_on_reset_password_token" ON "admin_users" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");