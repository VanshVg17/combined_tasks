CREATE DATABASE combined_task;
USE combined_task;

CREATE TABLE users (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    contact_no VARCHAR(12),
    username VARCHAR(255),
    email_id VARCHAR(255),
    user_password VARCHAR(255),
    salt VARCHAR(255),
    activation_key VARCHAR(255),
    activated TINYINT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE student_master_26_feb (
	student_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    contact_no VARCHAR(10) NOT NULL,
    email_id VARCHAR(45) NOT NULL,
    city VARCHAR(40),
    state VARCHAR(40),
    pincode VARCHAR(8),
    father_name VARCHAR(45),
    mother_name VARCHAR(45),
    college_name VARCHAR(45),
    created_at TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP(3)
);
select * from student_master_26_feb;
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Tatiania','Buffum',6611087928,'Tatiania.Buffum@gmail.com','Arequipa','Nouakchott',946808,'Kara-Lynn','Morganica','Clarissa' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Sallie','Cleo',7081127525,'Sallie.Cleo@gmail.com','Ljubljana','Tunis',708082,'Catrina','Adele','Jerold' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Rhea','Capello',9161014666,'Rhea.Capello@gmail.com','Ankara','Livingstone',880104,'Lizzie','Paule','Sheng' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Esmeralda','Arathorn',6420509448,'Esmeralda.Arathorn@gmail.com','Frankfurt','Omsk',926104,'Modestia','Darci','Johanna' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Vanessa','Damarra',6770721841,'Vanessa.Damarra@gmail.com','Tijuana','Santiago de Cuba',817504,'Lynea','Pearline','Verger' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Teddie','Adalbert',9307224695,'Teddie.Adalbert@gmail.com','Guayaquil','Jersey City',796150,'Brandise','Lorne','Socha' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Katharina','Noman',8615268031,'Katharina.Noman@gmail.com','Mexicali','Kobe',600553,'Etta','Misha','Suzetta' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Albertina','Maisey',8898395951,'Albertina.Maisey@gmail.com','Sitka','Manzini',698602,'Angela','Madeleine','Poll' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Winifred','Hunfredo',6261946779,'Winifred.Hunfredo@gmail.com','Maseru','Stanley',826285,'Jaclyn','Wanda','Hepsibah' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Daune','Sisile',6612673244,'Daune.Sisile@gmail.com','Ndola','Vaduz',819361,'Lesly','Lindie','Trinetta' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Kathi','Belanger',7858787218,'Kathi.Belanger@gmail.com','City of San Marino','Chuí',722659,'Netty','Jenda','Alarise' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Margette','Sherrie',6755917582,'Margette.Sherrie@gmail.com','Xi''an','Hanoi',839834,'Christian','Claudina','Bow' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Merry','Lynn',7397828163,'Merry.Lynn@gmail.com','Havana','Gold Coast',751062,'Gratia','Eve','Eugenia' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Jenilee','Annabella',8919713167,'Jenilee.Annabella@gmail.com','Shanghai','Frankfurt',862582,'Daune','Steffane','Milson' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Heida','Niles',9027289561,'Heida.Niles@gmail.com','Padang','Yamoussoukro',655369,'Suzette','Helena','Pernick' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Heddie','Fitzsimmons',6504969940,'Heddie.Fitzsimmons@gmail.com','Bridgetown','Kano',880793,'Starla','Antonietta','Rustice' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Christal','Maroney',6145598830,'Christal.Maroney@gmail.com','Ibadan','Ushuaia',983603,'Regina','Orsola','Wooster' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Lelah','Vittoria',6700964064,'Lelah.Vittoria@gmail.com','Düsseldorf','Assis',745151,'Karina','Lyssa','Stevy' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Livvyy','Cynar',6785707674,'Livvyy.Cynar@gmail.com','Sukhumi','Zamboanga City',643605,'Viki','Consuela','Pandolfi' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Claresta','Keily',7274586197,'Claresta.Keily@gmail.com','Havana','Perth',642109,'Jany','Leia','Rustice' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Berta','Aprile',7703047185,'Berta.Aprile@gmail.com','Sabha','Shenyang',965040,'Marika','Phedra','Ruvolo' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Clo','Irmine',7804105941,'Clo.Irmine@gmail.com','Juneau','Djibouti (city)',956077,'Jillayne','Fredericka','Teryn' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Lisette','Virgin',7142319227,'Lisette.Virgin@gmail.com','Sapporo','Yekaterinburg',988031,'Kate','Ira','Ricarda' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Lucille','Kenney',6934106034,'Lucille.Kenney@gmail.com','Concepción','Harare',659613,'Florie','Kaia','Harriman' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Yvonne','Ioab',6269789396,'Yvonne.Ioab@gmail.com','Tripoli','Sri Jayawardenapura-Kotte',931906,'Jaclyn','Joleen','Hoenack' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Cherilyn','Thunell',9686315644,'Cherilyn.Thunell@gmail.com','Los Angeles','Harbin',965685,'Fred','Almeta','Ricki' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Gusella','Girardo',8646903414,'Gusella.Girardo@gmail.com','Kaliningrad','Multan',951230,'Karina','Laure','Malina' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Karly','Stuart',9352230836,'Karly.Stuart@gmail.com','Surabaya','Shijiazhuang',887338,'Wendi','Joane','Anselmi' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Carilyn','Merna',8394292451,'Carilyn.Merna@gmail.com','Padang','Nantes',981844,'Renae','Anestassia','Lubin' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Frieda','Eugenia',7221728380,'Frieda.Eugenia@gmail.com','Virginia Beach','Lhasa',980677,'Marnia','Annabela','Shaddock' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Leanna','Connelly',6858893570,'Leanna.Connelly@gmail.com','Nairobi','Pattaya',831536,'Latisha','Wynne','Vale' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Kristan','Love',8217478907,'Kristan.Love@gmail.com','Kaliningrad','Dammam',793222,'Jennica','Coral','Marcellus' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Amara','Estella',7537656610,'Amara.Estella@gmail.com','Rabat','Changchun',841993,'Valli','Petronia','Hertzfeld' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Sindee','Duwalt',9570323994,'Sindee.Duwalt@gmail.com','Wellington','Antananarivo',667152,'Antonietta','Keelia','Campball' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Fidelia','Posner',9266710628,'Fidelia.Posner@gmail.com','Rabi Island','Tagbilaran',840216,'Bobinette','Lorenza','Liebermann' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Cyb','Abram',9280394994,'Cyb.Abram@gmail.com','Makati City','Road Town',907510,'Phedra','Marylou','Myrilla' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Konstance','Swanhildas',9313886318,'Konstance.Swanhildas@gmail.com','Port Said','Albuquerque',907009,'Susan','Stacey','Schwejda' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Marguerite','Wareing',8645668034,'Marguerite.Wareing@gmail.com','Tórshavn','Multan',807330,'Valera','Susan','Ogren' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Sean','Janith',7858591108,'Sean.Janith@gmail.com','Bandung','San Fernando',967853,'Tobe','Vivia','Gahl' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Jaclyn','Ader',9130921492,'Jaclyn.Ader@gmail.com','Detroit','Bangkok',691059,'Lanna','Annice','Goode' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Carlie','Kenney',8595290736,'Carlie.Kenney@gmail.com','Shenzhen','Odessa',919186,'Dulce','Mireielle','Raseda' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Ursulina','Moina',7461557836,'Ursulina.Moina@gmail.com','Chaguanas','Tucson',798034,'Jennica','Janis','Forrer' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Bettine','Tice',6042008190,'Bettine.Tice@gmail.com','Santa Cruz de Tenerife','Rosario',724385,'Fina','Sallie','Hachmin' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Emilia','Stelle',7416498467,'Emilia.Stelle@gmail.com','Koulikoro','Aarhus',993422,'Donetta','Max','Koehler' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Margarette','Anis',6028842240,'Margarette.Anis@gmail.com','Cardiff','Miami',934789,'Concettina','Ellette','Adore' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Maisey','Anyah',7937214286,'Maisey.Anyah@gmail.com','Monterrey','Saipan',824785,'Trixi','Etta','Alcott' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Yvonne','Waldron',9557525348,'Yvonne.Waldron@gmail.com','Chongjin','Enugu',871243,'Rosabelle','Taffy','Strephon' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Chloris','Tomasina',8874381343,'Chloris.Tomasina@gmail.com','Dar es Salaam','Mogadishu',724133,'Marylou','Merrie','Himelman' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Goldie','Maurine',8063510056,'Goldie.Maurine@gmail.com','Seville','Juneau',794321,'Mallory','Margarette','Ietta' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Janenna','Vernier',7626676913,'Janenna.Vernier@gmail.com','Quito','Skopje',726822,'Atlanta','Felice','Lareena' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Zsa Zsa','Fleeta',7570045365,'Zsa Zsa.Fleeta@gmail.com','Dubai','Minsk',896807,'Flo','Andeee','Susannah' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Orelia','Jary',9397456688,'Orelia.Jary@gmail.com','Bangalore','Boston',769960,'Gavrielle','Louella','Dahlia' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Cissiee','Edison',9706183778,'Cissiee.Edison@gmail.com','Kano','Iquitos',996289,'Jessamyn','Britte','Etom' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Amara','Wareing',8324279547,'Amara.Wareing@gmail.com','Tashkent','Moscow',960427,'Alameda','Winny','Drisko' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Priscilla','Decato',6846548905,'Priscilla.Decato@gmail.com','Koulikoro','Shenyang',934711,'Margalo','Justinn','Dorine' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Malina','Tengdin',8048164547,'Malina.Tengdin@gmail.com','Manzini','Multan',932044,'Juliane','Nannie','Noelyn' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Sharai','Felizio',6253385606,'Sharai.Felizio@gmail.com','Split (city)','Tegucigalpa',784883,'Riannon','Randa','Hilbert' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Maisey','Stelle',6745145977,'Maisey.Stelle@gmail.com','Campo Grande','Chennai',855436,'Cacilie','Aryn','Laurianne' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Kassey','Oneida',8640893699,'Kassey.Oneida@gmail.com','Puebla','Santiago de Cuba',661228,'Lucille','Therine','Magdalen' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Gui','Dahlia',8899460189,'Gui.Dahlia@gmail.com','Chihuahua','Muscat',708246,'Kate','Leona','Thunell' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Liana','Dulciana',7266763678,'Liana.Dulciana@gmail.com','Hanoi','Milan',652413,'Lynnea','Petronia','Grayce' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Beatriz','Garrison',7161297721,'Beatriz.Garrison@gmail.com','Tbilisi','Faisalabad',876414,'Viki','Donetta','Hylan' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Janenna','Vacuva',7042600881,'Janenna.Vacuva@gmail.com','Nassau','Lagos',704117,'Evaleen','Sharlene','Phi' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Aeriela','Strephon',8820401798,'Aeriela.Strephon@gmail.com','Seattle','Adana',819671,'Marsiella','Joleen','Gaulin' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Shaine','Liva',7059444392,'Shaine.Liva@gmail.com','Port Vila','Perth',621120,'Etta','Sean','Sothena' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Carmela','Delp',7095073380,'Carmela.Delp@gmail.com','Ürümqi','Shigatse',826230,'Siana','Cecile','Stevy' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Marjie','Ulphia',8637664000,'Marjie.Ulphia@gmail.com','Cairns','Dushanbe',832367,'Kirbee','Dacia','Malina' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Karena','Hull',8714015686,'Karena.Hull@gmail.com','Yaoundé','Banjul',922480,'Tersina','Frank','Chesna' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Tierney','Winthorpe',6665284474,'Tierney.Winthorpe@gmail.com','Iloilo City','Tirana',692931,'Iseabal','Drucie','Carleen' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Sibella','Persse',7647205546,'Sibella.Persse@gmail.com','Espoo','Port Elizabeth',766406,'Hollie','Kelly','Edvard' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Feliza','Karl',6042270041,'Feliza.Karl@gmail.com','Ashgabat','Kinshasa',701240,'Carlie','Cyb','Maisey' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Odessa','Croix',7534993703,'Odessa.Croix@gmail.com','Addis Ababa','Veracruz',742079,'Clementine','Phedra','Trinetta' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Norine','Kalinda',8680413165,'Norine.Kalinda@gmail.com','Antananarivo','Las Vegas',973541,'Penelopa','Feliza','Raama' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Lolita','Vernier',6025465638,'Lolita.Vernier@gmail.com','Nice','Guadalajara',740766,'Nerta','Rosabelle','Corabella' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Ottilie','Nikaniki',8533236309,'Ottilie.Nikaniki@gmail.com','Petropavlovsk-Kamchatsky','Kuching',923513,'Riannon','Kial','Jacobah' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Vanessa','Leopold',8629163489,'Vanessa.Leopold@gmail.com','Zapopan','Zapopan',944347,'Karina','Calla','Lindemann' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Livvyy','Artie',9767590107,'Livvyy.Artie@gmail.com','Kingston','Timbuktu',879078,'Valeda','Brianna','Durware' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Mahalia','Anderea',6370850719,'Mahalia.Anderea@gmail.com','Zürich','Bujumbura',866989,'Pearline','Mahalia','Roumell' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Joeann','Wiener',7979695744,'Joeann.Wiener@gmail.com','Riverside','Namangan',679510,'Ilse','Antonietta','Zetta' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Rozele','Garbe',9832522056,'Rozele.Garbe@gmail.com','Accra','Xining',647395,'Celene','Vonny','Slifka' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Ayn','Phaidra',9252195979,'Ayn.Phaidra@gmail.com','Guayaquil','Anadyr (town)',799092,'Modestia','Audrie','Carolin' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Tressa','Ciapas',8319437572,'Tressa.Ciapas@gmail.com','Seattle','Roseau',676278,'Clementine','Tamqrah','O''Carroll' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Florie','Glovsky',9396708655,'Florie.Glovsky@gmail.com','Conakry','Srinagar',906777,'Fawne','Chandra','Ciro' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Gwyneth','Casimir',9251985332,'Gwyneth.Casimir@gmail.com','Padang','Copenhagen',912427,'Deedee','Lita','Curren' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Clo','Larochelle',6935683583,'Clo.Larochelle@gmail.com','Simferopol','Adak',613523,'Maridel','Susan','Slifka' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Ardys','Laverne',8447449628,'Ardys.Laverne@gmail.com','Yakutsk','Indianapolis',805750,'Kate','Linet','Autrey' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Alyda','Sparhawk',6771958516,'Alyda.Sparhawk@gmail.com','Surat','Chongjin',888884,'Gwenneth','Rosaline','Velick' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Rayna','Carlson',8636788721,'Rayna.Carlson@gmail.com','Chiang Mai','Kaohsiung',885600,'Aimil','Deedee','McGrody' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Violet','Dudley',7221712070,'Violet.Dudley@gmail.com','Porto Velho','Dalian',711438,'Maridel','Georgina','Heidt' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Gisela','Abernon',6010982677,'Gisela.Abernon@gmail.com','Colombo','Thessaloniki',602117,'Ninnetta','Kathy','Lowry' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Quintina','Birdella',6573623756,'Quintina.Birdella@gmail.com','Mendoza','Basse-Terre',638208,'June','Dennie','Milson' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Jacquetta','Land',9193120414,'Jacquetta.Land@gmail.com','Managua','Buffalo',669896,'Elsie','Susan','Justinn' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Sean','Weinreb',8175944536,'Sean.Weinreb@gmail.com','Warsaw','Espoo',645882,'Bernardine','Layla','Tufts' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Robinia','Iiette',8661858508,'Robinia.Iiette@gmail.com','Harbin','Sacramento',760575,'Consuela','Allis','Lalitta' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Teriann','Miru',9377894754,'Teriann.Miru@gmail.com','Barranquilla','Austin',921956,'Marguerite','Tybie','Belldas' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Coral','Bahr',9151664884,'Coral.Bahr@gmail.com','Ilhéus','Srinagar',692255,'Lanna','Giustina','Even' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Frank','Slifka',9319910778,'Frank.Slifka@gmail.com','Brikama','Phuket (city)',873843,'Merci','Ayn','Melan' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Beverley','Raul',9808885337,'Beverley.Raul@gmail.com','Koulikoro','Darwin',879446,'Nonnah','Ofilia','Cristi' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Dale','Rustice',8442879914,'Dale.Rustice@gmail.com','Angra do Heroísmo','Wonsan',979645,'Rochette','Belinda','Phi' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Randa','Hubert',7297845153,'Randa.Hubert@gmail.com','Marseille','Vientiane',995652,'Meg','Agnese','Lumbard' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Gwyneth','Taam',9237329982,'Gwyneth.Taam@gmail.com','Nassau','Gaborone',611143,'Fina','Collen','Urias' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Rebeca','Jarib',8946953756,'Rebeca.Jarib@gmail.com','Port of Spain','Bahía Blanca',898937,'Cecile','Bee','Si' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Netty','Lea',9396374912,'Netty.Lea@gmail.com','Iloilo City','Innsbruck',661845,'Frances','Edee','Milde' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Lauryn','Brian',9343023335,'Lauryn.Brian@gmail.com','Mendoza','Munich',904918,'Hope','Maud','August' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Odessa','Anderea',7384581269,'Odessa.Anderea@gmail.com','Tucson','Moroni',678794,'Latisha','Darlleen','Edee' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Margarette','Harday',9398981694,'Margarette.Harday@gmail.com','Taipei','Padang',834002,'Ricky','Courtnay','Mich' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Belinda','Doig',8562003589,'Belinda.Doig@gmail.com','Quebec City','Valencia',683051,'Celisse','Emma','Kermit' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Amalie','Lutero',9673074381,'Amalie.Lutero@gmail.com','Brussels','Udon Thani',988986,'Starla','Gusty','Cath' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Marita','Margarete',8100839552,'Marita.Margarete@gmail.com','Amritsar','Honolulu',714911,'Phedra','Adelle','Fadiman' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Peri','Faria',7612953317,'Peri.Faria@gmail.com','Dili','Praia',808815,'Chickie','Gwyneth','Gibbeon' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Annecorinne','Rurik',8884574542,'Annecorinne.Rurik@gmail.com','Astana','Iquique',874844,'Minne','Ursulina','Buckler' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Maisey','Virgin',8863246984,'Maisey.Virgin@gmail.com','Dongguan','Ljubljana',893705,'Sadie','Gisela','Magdalen' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Libbie','Federica',6913652343,'Libbie.Federica@gmail.com','Dammam','Kanpur',825968,'Maridel','Gianina','Sandye' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Jobi','Anastatius',9806712276,'Jobi.Anastatius@gmail.com','Semarang','Guadalajara',637021,'Yolane','Clo','Harl' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Layla','Kress',6605423574,'Layla.Kress@gmail.com','Shenzhen','Leipzig',986600,'Julieta','Elie','Jobi' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Elsie','Stelle',7018464992,'Elsie.Stelle@gmail.com','Bogotá','Malang',678795,'Natka','Mureil','Orelee' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Annice','Jena',8079086374,'Annice.Jena@gmail.com','Fortaleza','Omsk',823515,'Sheree','Emilia','Kenney' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Kenna','Lymann',6673014543,'Kenna.Lymann@gmail.com','Austin','Cincinnati',859153,'Gianina','Tierney','Kathie' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Rosanne','Dearborn',9149509703,'Rosanne.Dearborn@gmail.com','Magadan','Beijing',613149,'Marinna','Annice','Ries' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Vivia','Gale',6090402440,'Vivia.Gale@gmail.com','Macau','Virginia Beach',616284,'Marnia','Jere','Cassius' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Dulcinea','Torray',7692336861,'Dulcinea.Torray@gmail.com','Doha','Taipei',725593,'Rayna','Alex','Doig' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Blondelle','Barbey',7602851433,'Blondelle.Barbey@gmail.com','Guadalajara','Baghdad',647520,'Etta','Keelia','Chaing' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Cristabel','Sothena',9737680564,'Cristabel.Sothena@gmail.com','Ulan Bator','Durango',988966,'Antonietta','Merci','Berriman' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Lorenza','Anyah',8868518520,'Lorenza.Anyah@gmail.com','Buffalo','Forked River',667083,'Karolina','Odessa','Jacinda' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Laurene','Clie',8434153712,'Laurene.Clie@gmail.com','Nagpur','Kano',840340,'Fanchon','Alleen','Kazimir' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Misha','Wilona',9192834731,'Misha.Wilona@gmail.com','Porto Alegre','São Paulo',660034,'Chickie','Tamqrah','Shields' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Di','Earlie',6540547438,'Di.Earlie@gmail.com','Glasgow','Aarhus',765920,'Miquela','Doralynne','Carey' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Charlena','Edvard',6640096219,'Charlena.Edvard@gmail.com','Kano','Iqaluit',837345,'Ethel','Merci','Linskey' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Cacilie','Evvie',6260239433,'Cacilie.Evvie@gmail.com','Doha','Basse-Terre',903113,'Allis','Sharai','Ezar' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Jillayne','Corilla',8609057834,'Jillayne.Corilla@gmail.com','Mecca','Yogyakarta (city)',652185,'Shirlee','Konstance','Taima' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Tomasina','Philoo',8228682036,'Tomasina.Philoo@gmail.com','Brasília','Chiang Mai',667477,'Danika','Yvonne','Jalbert' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Gaylene','Nerita',9992026076,'Gaylene.Nerita@gmail.com','Valdivia','Yekaterinburg',798006,'Betta','Maye','Mauer' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Claudina','Mike',9702336839,'Claudina.Mike@gmail.com','Ambon','Huế',857043,'Kimmy','Merci','McLaughlin' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Lusa','Dahlia',8182500478,'Lusa.Dahlia@gmail.com','Kunming','Malmö',924132,'Kimberley','Hayley','Naor' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Dennie','Hanshaw',9728563032,'Dennie.Hanshaw@gmail.com','Tabriz','Maceió',862056,'Modestia','Trudie','Bebe' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Jany','Lane',7802692819,'Jany.Lane@gmail.com','Ludhiana','Hanga Roa',973308,'Mireielle','Zondra','Prober' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Bernardine','Lumbard',9051825399,'Bernardine.Lumbard@gmail.com','Zanzibar City','Chihuahua',660130,'Rori','Winifred','Dash' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Willetta','Lorain',6515902345,'Willetta.Lorain@gmail.com','Leeds','Zapopan',700417,'Perry','Justinn','Vary' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Ricky','Urania',6494913527,'Ricky.Urania@gmail.com','Lima','Kawasaki',758924,'Sybille','Bee','Lewes' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Babita','Hepsibah',8543906349,'Babita.Hepsibah@gmail.com','Nizhny Novgorod','Tijuana',969856,'Demetris','Teriann','Dudley' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Ada','Hurley',8288606734,'Ada.Hurley@gmail.com','Peshawar','Livingstone',926631,'Tiffie','Raina','Chaing' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Abbie','Erich',9411001071,'Abbie.Erich@gmail.com','Namangan','Multan',642399,'Karolina','Bertine','Thornburg' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Konstance','Laurianne',6717828836,'Konstance.Laurianne@gmail.com','Thessaloniki','Port Blair',851846,'Jolyn','Leia','Terrence' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Demetris','Ackerley',9534341965,'Demetris.Ackerley@gmail.com','Bangkok','Castries',996517,'Lenna','Jacquetta','Lia' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Kimmy','Munn',7888763743,'Kimmy.Munn@gmail.com','Vatican City','Taiyuan',613280,'Zondra','Briney','McNully' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Jacquetta','Natalia',6969029436,'Jacquetta.Natalia@gmail.com','Vaduz','Medellín',878594,'Madalyn','Joleen','Kannry' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Roz','Chabot',7304536137,'Roz.Chabot@gmail.com','Bangkok','Timbuktu',881570,'Corly','Valeda','Bach' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Nikki','Tamsky',8787697385,'Nikki.Tamsky@gmail.com','Dar es Salaam','San Carlos de Bariloche',733955,'Cissiee','Christal','Pip' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Vere','Erskine',9196622068,'Vere.Erskine@gmail.com','Birkirkara','Assis',600056,'Jillayne','Ilse','Cadmar' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Delilah','Naashom',7290468442,'Delilah.Naashom@gmail.com','Thiès','Libreville',849283,'Fawne','Abbie','Ethban' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Harrietta','Strephon',6120103303,'Harrietta.Strephon@gmail.com','Hangzhou','Bishkek',809163,'Dulcinea','Jere','Buttaro' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Neila','Palocz',8671139882,'Neila.Palocz@gmail.com','Wonsan','Dili',715121,'Emilia','Valera','Idelia' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Anica','Allina',9695198111,'Anica.Allina@gmail.com','Douglas','Wuhan',913103,'Petronia','Maisey','Hilbert' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Florencia','Suzetta',8222928019,'Florencia.Suzetta@gmail.com','Lilongwe','Puerto Williams',794335,'Caritta','Chloris','Joli' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Phylis','Burkle',9860463184,'Phylis.Burkle@gmail.com','Austin','Ahmedabad',964353,'Bill','Quintina','Pacorro' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Correy','Giule',6361467634,'Correy.Giule@gmail.com','Tashkent','Yogyakarta (city)',628716,'Mellicent','Rubie','Edmund' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Calla','Toffic',8803075491,'Calla.Toffic@gmail.com','Okinawa','Istanbul',644384,'Alia','Letizia','Orlene' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Patricia','Parette',7918138342,'Patricia.Parette@gmail.com','Zapopan','Kanpur',834301,'Melodie','Hollie','Killigrew' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Debee','Reinke',6176291576,'Debee.Reinke@gmail.com','Oklahoma City','Kuching',734529,'Ernesta','Rani','Plato' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Jany','Arne',8467496217,'Jany.Arne@gmail.com','Rabat','Albuquerque',971353,'Janeczka','Minda','Bettine' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Lilith','Flyn',6559961180,'Lilith.Flyn@gmail.com','Marseille','Papeete',828726,'Kimberley','Addia','Oriana' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Catharine','Thema',7849415226,'Catharine.Thema@gmail.com','Francistown','Ushuaia',624314,'Dulcinea','Merrie','Marijo' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Marika','Waite',6320635125,'Marika.Waite@gmail.com','Malang','Chicago',988458,'Dulcinea','Katuscha','Kylander' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Tobe','Elbertina',8458128570,'Tobe.Elbertina@gmail.com','Chihuahua','Antofagasta',969516,'Goldie','Jeanna','Markman' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Nerta','Corilla',9453697010,'Nerta.Corilla@gmail.com','Yaren District','Tampere',979623,'Heida','Brandise','Erskine' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Binny','Kenney',7378463535,'Binny.Kenney@gmail.com','Zhengzhou','Kawasaki',810940,'Beatriz','Violet','Pearse' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Courtnay','Yam',7820607651,'Courtnay.Yam@gmail.com','Oslo','Tucson',640060,'Lilith','Meriel','Schonfeld' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Binny','Baptlsta',8591178737,'Binny.Baptlsta@gmail.com','São Tomé','Casablanca',644874,'Brietta','Coral','Sancho' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Malina','Arvo',7833159338,'Malina.Arvo@gmail.com','Jersey City','Toulouse',718200,'Daphne','Chickie','Lattie' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Pollyanna','An',8019662753,'Pollyanna.An@gmail.com','Yokohama','Cali',937306,'Marsiella','Brynna','Ellerey' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Sean','Merell',9730366570,'Sean.Merell@gmail.com','Prague','Monrovia',655102,'Angelique','Kara-Lynn','Autrey' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Imojean','Flita',7255918356,'Imojean.Flita@gmail.com','Jeddah','Valletta',844609,'Elie','Beverley','Garrison' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Sue','Deny',8335518975,'Sue.Deny@gmail.com','Miri','Tunis',802473,'Carilyn','Blake','Krystle' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Starla','Philoo',6360146682,'Starla.Philoo@gmail.com','Lucknow','Ludhiana',962105,'Aurore','Beth','Bibi' );
Insert Into combined_task.student_master_26_feb ( first_name, last_name, contact_no, email_id, city, state, pincode, father_name, mother_name, college_name) Values ( 'Ardys','Shaver',6504454010,'Ardys.Shaver@gmail.com','Osaka','Cairo',952583,'Sindee','Gaylene','Fontana' );

CREATE TABLE student_master_27_feb(
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    contact_no VARCHAR(12),
    email_id VARCHAR(100),
    gender VARCHAR(10)
);

Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Alie','Truc',7736201935,'Alie.Truc@gmail.com','Male' );
Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Albertina','Meli',7815817806,'Albertina.Meli@gmail.com','Female' );
Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Jsandye','Grimbly',9899026891,'Jsandye.Grimbly@gmail.com','Male' );
Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Wilma','Shelba',6961406670,'Wilma.Shelba@gmail.com','Male' );
Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Shauna','Dex',7123409036,'Shauna.Dex@gmail.com','Female' );
Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Bobbi','Manolo',8291037306,'Bobbi.Manolo@gmail.com','Female' );
Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Lauryn','Abbot',8083525216,'Lauryn.Abbot@gmail.com','Female' );
Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Carree','Philoo',9555392772,'Carree.Philoo@gmail.com','Male' );
Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Elise','Jehu',9431328525,'Elise.Jehu@gmail.com','Male' );
Insert Into combined_task.student_master_27_feb ( first_name, last_name, contact_no, email_id, gender) Values ( 'Robbi','Poppy',6335575234,'Robbi.Poppy@gmail.com','Female' );

CREATE TABLE attendance_27_feb (
	attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES student_master_27_feb(student_id),
    attendance_date DATE,
    attendance varchar(10)
);

INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(1, "2023-12-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(2, "2023-12-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(3, "2023-12-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(4, "2023-12-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(5, "2023-12-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(6, "2023-12-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(7, "2023-12-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(8, "2023-12-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(9, "2023-12-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(10, "2023-12-1", "Present");

INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(1, "2024-1-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(2, "2024-1-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(3, "2024-1-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(4, "2024-1-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(5, "2024-1-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(6, "2024-1-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(7, "2024-1-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(8, "2024-1-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(9, "2024-1-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(10, "2024-1-1", "Present");

INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(1, "2024-2-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(2, "2024-2-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(3, "2024-2-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(4, "2024-2-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(5, "2024-2-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(6, "2024-2-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(7, "2024-2-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(8, "2024-2-1", "Present");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(9, "2024-2-1", "Absent");
INSERT INTO attendance_27_feb (student_id, attendance_date, attendance) VALUES(10, "2024-2-1", "Present");

CREATE TABLE exam_master_27_feb (
	exam_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    exam_name VARCHAR(40) NOT NULL
);

INSERT INTO exam_master_27_feb(exam_id, exam_name) VALUES (1, "Terminal"),(2, "Prelim"), (3, "Final");

CREATE TABLE subject_master_27_feb (
	subject_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    subject_name VARCHAR(40) NOT NULL
);

INSERT INTO subject_master_27_feb(subject_id, subject_name) VALUES (1, "React JS"),(2, "Node JS"), (3, "Next JS"),(4, "Express JS"), (5, "Vanilla JS"), (6, "Angular JS");

CREATE TABLE result_27_feb (
	sr_no INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	student_id INT,
    FOREIGN KEY(student_id) REFERENCES student_master_27_feb(student_id),
    subject_id INT,
    FOREIGN KEY(subject_id) REFERENCES subject_master_27_feb(subject_id),
    exam_id INT,
    FOREIGN KEY(exam_id) REFERENCES exam_master_27_feb(exam_id),
    theory INT,
    practical INT
);

INSERT INTO result_27_feb (student_id, subject_id, exam_id, theory, practical) VALUES(1,1,1,27,0);
INSERT INTO result_27_feb (student_id, subject_id, exam_id, theory, practical) VALUES(1,1,2,12,15);
INSERT INTO result_27_feb (student_id, subject_id, exam_id, theory, practical) VALUES(1,1,3,42,3);
INSERT INTO result_27_feb (student_id, subject_id, exam_id, theory, practical) VALUES(2,1,1,25,14);
INSERT INTO result_27_feb (student_id, subject_id, exam_id, theory, practical) VALUES(2,1,2,23,8);
INSERT INTO result_27_feb (student_id, subject_id, exam_id, theory, practical) VALUES(2,1,3,6,8);

create table basic_details (
	application_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    designation VARCHAR(50) NOT NULL,
    address1 VARCHAR(100) NOT NULL,
    address2 VARCHAR(100),
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zipcode VARCHAR(10) NOT NULL,
    email_id VARCHAR(50) NOT NULL,
    contact_no VARCHAR(12) NOT NULL,
    gender VARCHAR(10),
    relationship_status VARCHAR(10),
    birth_date DATE
);

create table education_details (
	application_id INT NOT NULL,
    FOREIGN KEY(application_id) REFERENCES basic_details(application_id),
    course VARCHAR(50),
    course_passing_year DATE,
    course_percentage FLOAT
);

create table known_technologies (
	application_id INT NOT NULL,
    FOREIGN KEY(application_id) REFERENCES basic_details(application_id),
    tech_name VARCHAR(50) NOT NULL,
    tech_level VARCHAR(50) NOT NULL
);

create table known_languages (
	application_id INT NOT NULL,
    FOREIGN KEY(application_id) REFERENCES basic_details(application_id),
    languages_name VARCHAR(50) NOT NULL,
    reading VARCHAR(10),
    speaking VARCHAR(10),
    writing VARCHAR(10)
);

create table work_experiences(
	application_id INT NOT NULL,
    FOREIGN KEY(application_id) REFERENCES basic_details(application_id),
    company_name VARCHAR(50),
    company_designation VARCHAR(50),
    company_joining_date DATE,
    company_leaving_date DATE
);

create table reference_contacts (
	application_id INT NOT NULL,
    FOREIGN KEY(application_id) REFERENCES basic_details(application_id),
    reference_contact_name VARCHAR(50),
    reference_contact_number VARCHAR(50),
    reference_contact_relation VARCHAR(50)
);

create table preferences (
	application_id INT NOT NULL,
    FOREIGN KEY(application_id) REFERENCES basic_details(application_id),
    prefered_location VARCHAR(50) NOT NULL,
    notice_period VARCHAR(50) NOT NULL,
    expected_ctc VARCHAR(50) NOT NULL,
    current_ctc VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL
);

CREATE TABLE selects_master (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    select_name VARCHAR(50),
    option_key VARCHAR(50),
    select_type VARCHAR(50),
    multi_value VARCHAR(4),
    class_name VARCHAR(50)
);

INSERT INTO selects_master (select_name, option_key, select_type, multi_value)
VALUES("gender", "gender_opt", "radio", "no"), ("relationship", "realtionship_opt", "dropdown", "no"),
("language", "lang_opt", "checkbox", "yes"), ("technology", "tech_opt", "checkbox", "yes"),
("location", "location_opt", "dropdown", "no"), ("department", "dept_opt", "dropdown", "no");

CREATE TABLE options_master (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    select_id INT,
    FOREIGN KEY(select_id) REFERENCES selects_master(id),
    option_value VARCHAR(50),
    option_label VARCHAR(50)
);

INSERT INTO options_master (select_id, option_value, option_label)
VALUES (1, "male", "Male"), (1, "female", "Female"), (1, "other", "Other"),
(2, "single", "Single"), (2, "married", "Married"), (2, "other", "Other"),
(3, "hindi", "Hindi"), (3, "english", "English"), (3, "gujarati", "Gujarati"),
(4, "php", "PHP"), (4, "mysql", "Mysql"), (4, "laravel", "Laravel"), (4, "oracle", "Oracle"),
(5, "gujarat", "Gujarat"), (5, "maharashtra", "Maharashtra"), (5, "rajasthan", "Rajasthan"),
(6, "development", "Development"), (6, "design", "Design"), (6, "marketing", "Marketing");