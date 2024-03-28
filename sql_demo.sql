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

CREATE TABLE states (
  id int NOT NULL AUTO_INCREMENT,
  state_name varchar(50) NOT NULL,
  country_id int NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO `states` VALUES (1,'ANDHRA PRADESH',105),(2,'ASSAM',105),(3,'ARUNACHAL PRADESH',105),
(4,'BIHAR',105),(5,'GUJRAT',105),(6,'HARYANA',105),(7,'HIMACHAL PRADESH',105),(8,'JAMMU & KASHMIR',105),
(9,'KARNATAKA',105),(10,'KERALA',105),(11,'MADHYA PRADESH',105),(12,'MAHARASHTRA',105),(13,'MANIPUR',105),
(14,'MEGHALAYA',105),(15,'MIZORAM',105),(16,'NAGALAND',105),(17,'ORISSA',105),(18,'PUNJAB',105),
(19,'RAJASTHAN',105),(20,'SIKKIM',105),(21,'TAMIL NADU',105),(22,'TRIPURA',105),(23,'UTTAR PRADESH',105),
(24,'WEST BENGAL',105),(25,'DELHI',105),(26,'GOA',105),(27,'PONDICHERY',105),(28,'LAKSHDWEEP',105),
(29,'DAMAN & DIU',105),(30,'DADRA & NAGAR',105),(31,'CHANDIGARH',105),(32,'ANDAMAN & NICOBAR',105),
(33,'UTTARANCHAL',105),(34,'JHARKHAND',105),(35,'CHATTISGARH',105);

CREATE TABLE cities (
  id int NOT NULL AUTO_INCREMENT,
  city varchar(255) NOT NULL,
  state_id int NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO `cities` VALUES (1,'North and Middle Andaman',32),(2,'South Andaman',32),(3,'Nicobar',32),
(4,'Adilabad',1),(5,'Anantapur',1),(6,'Chittoor',1),(7,'East Godavari',1),(8,'Guntur',1),
(9,'Hyderabad',1),(10,'Kadapa',1),(11,'Karimnagar',1),(12,'Khammam',1),(13,'Krishna',1),
(14,'Kurnool',1),(15,'Mahbubnagar',1),(16,'Medak',1),(17,'Nalgonda',1),(18,'Nellore',1),
(19,'Nizamabad',1),(20,'Prakasam',1),(21,'Rangareddi',1),(22,'Srikakulam',1),(23,'Vishakhapatnam',1),
(24,'Vizianagaram',1),(25,'Warangal',1),(26,'West Godavari',1),(27,'Anjaw',3),(28,'Changlang',3),
(29,'East Kameng',3),(30,'Lohit',3),(31,'Lower Subansiri',3),(32,'Papum Pare',3),(33,'Tirap',3),
(34,'Dibang Valley',3),(35,'Upper Subansiri',3),(36,'West Kameng',3),(37,'Barpeta',2),
(38,'Bongaigaon',2),(39,'Cachar',2),(40,'Darrang',2),(41,'Dhemaji',2),(42,'Dhubri',2),
(43,'Dibrugarh',2),(44,'Goalpara',2),(45,'Golaghat',2),(46,'Hailakandi',2),(47,'Jorhat',2),
(48,'Karbi Anglong',2),(49,'Karimganj',2),(50,'Kokrajhar',2),(51,'Lakhimpur',2),(52,'Marigaon',2),
(53,'Nagaon',2),(54,'Nalbari',2),(55,'North Cachar Hills',2),(56,'Sibsagar',2),(57,'Sonitpur',2),
(58,'Tinsukia',2),(59,'Araria',4),(60,'Aurangabad',4),(61,'Banka',4),(62,'Begusarai',4),
(63,'Bhagalpur',4),(64,'Bhojpur',4),(65,'Buxar',4),(66,'Darbhanga',4),(67,'Purba Champaran',4),
(68,'Gaya',4),(69,'Gopalganj',4),(70,'Jamui',4),(71,'Jehanabad',4),(72,'Khagaria',4),
(73,'Kishanganj',4),(74,'Kaimur',4),(75,'Katihar',4),(76,'Lakhisarai',4),(77,'Madhubani',4),
(78,'Munger',4),(79,'Madhepura',4),(80,'Muzaffarpur',4),(81,'Nalanda',4),(82,'Nawada',4),
(83,'Patna',4),(84,'Purnia',4),(85,'Rohtas',4),(86,'Saharsa',4),(87,'Samastipur',4),
(88,'Sheohar',4),(89,'Sheikhpura',4),(90,'Saran',4),(91,'Sitamarhi',4),(92,'Supaul',4),
(93,'Siwan',4),(94,'Vaishali',4),(95,'Pashchim Champaran',4),(96,'Bastar',36),(97,'Bilaspur',36),
(98,'Dantewada',36),(99,'Dhamtari',36),(100,'Durg',36),(101,'Jashpur',36),(102,'Janjgir-Champa',36),
(103,'Korba',36),(104,'Koriya',36),(105,'Kanker',36),(106,'Kawardha',36),(107,'Mahasamund',36),
(108,'Raigarh',36),(109,'Rajnandgaon',36),(110,'Raipur',36),(111,'Surguja',36),(112,'Diu',29),
(113,'Daman',29),(114,'Central Delhi',25),(115,'East Delhi',25),(116,'New Delhi',25),
(117,'North Delhi',25),(118,'North East Delhi',25),(119,'North West Delhi',25),(120,'South Delhi',25),
(121,'South West Delhi',25),(122,'West Delhi',25),(123,'North Goa',26),(124,'South Goa',26),
(125,'Ahmedabad',5),(126,'Amreli District',5),(127,'Anand',5),(128,'Banaskantha',5),(129,'Bharuch',5),
(130,'Bhavnagar',5),(131,'Dahod',5),(132,'The Dangs',5),(133,'Gandhinagar',5),
(134,'Jamnagar',5),(135,'Junagadh',5),(136,'Kutch',5),(137,'Kheda',5),(138,'Mehsana',5),
(139,'Narmada',5),(140,'Navsari',5),(141,'Patan',5),(142,'Panchmahal',5),(143,'Porbandar',5),(144,'Rajkot',5),(145,'Sabarkantha',5),(146,'Surendranagar',5),(147,'Surat',5),(148,'Vadodara',5),(149,'Valsad',5),(150,'Ambala',6),(151,'Bhiwani',6),(152,'Faridabad',6),(153,'Fatehabad',6),(154,'Gurgaon',6),(155,'Hissar',6),(156,'Jhajjar',6),(157,'Jind',6),(158,'Karnal',6),(159,'Kaithal',6),(160,'Kurukshetra',6),(161,'Mahendragarh',6),(162,'Mewat',6),(163,'Panchkula',6),(164,'Panipat',6),(165,'Rewari',6),(166,'Rohtak',6),(167,'Sirsa',6),(168,'Sonepat',6),(169,'Yamuna Nagar',6),(170,'Palwal',6),(171,'Bilaspur',7),(172,'Chamba',7),(173,'Hamirpur',7),(174,'Kangra',7),(175,'Kinnaur',7),(176,'Kulu',7),(177,'Lahaul and Spiti',7),(178,'Mandi',7),(179,'Shimla',7),(180,'Sirmaur',7),(181,'Solan',7),(182,'Una',7),(183,'Anantnag',8),(184,'Badgam',8),(185,'Bandipore',8),(186,'Baramula',8),(187,'Doda',8),(188,'Jammu',8),(189,'Kargil',8),(190,'Kathua',8),(191,'Kupwara',8),(192,'Leh',8),(193,'Poonch',8),(194,'Pulwama',8),(195,'Rajauri',8),(196,'Srinagar',8),(197,'Samba',8),(198,'Udhampur',8),(199,'Bokaro',34),(200,'Chatra',34),(201,'Deoghar',34),(202,'Dhanbad',34),(203,'Dumka',34),(204,'Purba Singhbhum',34),(205,'Garhwa',34),(206,'Giridih',34),(207,'Godda',34),(208,'Gumla',34),(209,'Hazaribagh',34),(210,'Koderma',34),(211,'Lohardaga',34),(212,'Pakur',34),(213,'Palamu',34),(214,'Ranchi',34),(215,'Sahibganj',34),(216,'Seraikela and Kharsawan',34),(217,'Pashchim Singhbhum',34),(218,'Ramgarh',34),(219,'Bidar',9),(220,'Belgaum',9),(221,'Bijapur',9),(222,'Bagalkot',9),(223,'Bellary',9),(224,'Bangalore Rural District',9),(225,'Bangalore Urban District',9),(226,'Chamarajnagar',9),(227,'Chikmagalur',9),(228,'Chitradurga',9),(229,'Davanagere',9),(230,'Dharwad',9),(231,'Dakshina Kannada',9),(232,'Gadag',9),(233,'Gulbarga',9),(234,'Hassan',9),(235,'Haveri District',9),(236,'Kodagu',9),(237,'Kolar',9),(238,'Koppal',9),(239,'Mandya',9),(240,'Mysore',9),(241,'Raichur',9),(242,'Shimoga',9),(243,'Tumkur',9),(244,'Udupi',9),(245,'Uttara Kannada',9),(246,'Ramanagara',9),(247,'Chikballapur',9),(248,'Yadagiri',9),(249,'Alappuzha',10),(250,'Ernakulam',10),(251,'Idukki',10),(252,'Kollam',10),(253,'Kannur',10),(254,'Kasaragod',10),(255,'Kottayam',10),(256,'Kozhikode',10),(257,'Malappuram',10),(258,'Palakkad',10),(259,'Pathanamthitta',10),(260,'Thrissur',10),(261,'Thiruvananthapuram',10),(262,'Wayanad',10),(263,'Alirajpur',11),(264,'Anuppur',11),(265,'Ashok Nagar',11),(266,'Balaghat',11),(267,'Barwani',11),(268,'Betul',11),(269,'Bhind',11),(270,'Bhopal',11),(271,'Burhanpur',11),(272,'Chhatarpur',11),(273,'Chhindwara',11),(274,'Damoh',11),(275,'Datia',11),(276,'Dewas',11),(277,'Dhar',11),(278,'Dindori',11),(279,'Guna',11),(280,'Gwalior',11),(281,'Harda',11),(282,'Hoshangabad',11),(283,'Indore',11),(284,'Jabalpur',11),(285,'Jhabua',11),(286,'Katni',11),(287,'Khandwa',11),(288,'Khargone',11),(289,'Mandla',11),(290,'Mandsaur',11),(291,'Morena',11),(292,'Narsinghpur',11),(293,'Neemuch',11),(294,'Panna',11),(295,'Rewa',11),(296,'Rajgarh',11),(297,'Ratlam',11),(298,'Raisen',11),(299,'Sagar',11),(300,'Satna',11),(301,'Sehore',11),(302,'Seoni',11),(303,'Shahdol',11),(304,'Shajapur',11),(305,'Sheopur',11),(306,'Shivpuri',11),(307,'Sidhi',11),(308,'Singrauli',11),(309,'Tikamgarh',11),(310,'Ujjain',11),(311,'Umaria',11),(312,'Vidisha',11),(313,'Ahmednagar',12),(314,'Akola',12),(315,'Amrawati',12),(316,'Aurangabad',12),(317,'Bhandara',12),(318,'Beed',12),(319,'Buldhana',12),(320,'Chandrapur',12),(321,'Dhule',12),(322,'Gadchiroli',12),(323,'Gondiya',12),(324,'Hingoli',12),(325,'Jalgaon',12),(326,'Jalna',12),(327,'Kolhapur',12),(328,'Latur',12),(329,'Mumbai City',12),(330,'Mumbai suburban',12),(331,'Nandurbar',12),(332,'Nanded',12),(333,'Nagpur',12),(334,'Nashik',12),(335,'Osmanabad',12),(336,'Parbhani',12),(337,'Pune',12),(338,'Raigad',12),(339,'Ratnagiri',12),(340,'Sindhudurg',12),(341,'Sangli',12),(342,'Solapur',12),(343,'Satara',12),(344,'Thane',12),(345,'Wardha',12),(346,'Washim',12),(347,'Yavatmal',12),(348,'Bishnupur',13),(349,'Churachandpur',13),(350,'Chandel',13),(351,'Imphal East',13),(352,'Senapati',13),(353,'Tamenglong',13),(354,'Thoubal',13),(355,'Ukhrul',13),(356,'Imphal West',13),(357,'East Garo Hills',14),(358,'East Khasi Hills',14),(359,'Jaintia Hills',14),(360,'Ri-Bhoi',14),(361,'South Garo Hills',14),(362,'West Garo Hills',14),(363,'West Khasi Hills',14),(364,'Aizawl',15),(365,'Champhai',15),(366,'Kolasib',15),(367,'Lawngtlai',15),(368,'Lunglei',15),(369,'Mamit',15),(370,'Saiha',15),(371,'Serchhip',15),(372,'Dimapur',16),(373,'Kohima',16),(374,'Mokokchung',16),(375,'Mon',16),(376,'Phek',16),(377,'Tuensang',16),(378,'Wokha',16),(379,'Zunheboto',16),(380,'Angul',17),(381,'Boudh',17),(382,'Bhadrak',17),(383,'Bolangir',17),(384,'Bargarh',17),(385,'Baleswar',17),(386,'Cuttack',17),(387,'Debagarh',17),(388,'Dhenkanal',17),(389,'Ganjam',17),(390,'Gajapati',17),(391,'Jharsuguda',17),(392,'Jajapur',17),(393,'Jagatsinghpur',17),(394,'Khordha',17),(395,'Kendujhar',17),(396,'Kalahandi',17),(397,'Kandhamal',17),(398,'Koraput',17),(399,'Kendrapara',17),(400,'Malkangiri',17),(401,'Mayurbhanj',17),(402,'Nabarangpur',17),(403,'Nuapada',17),(404,'Nayagarh',17),(405,'Puri',17),(406,'Rayagada',17),(407,'Sambalpur',17),(408,'Subarnapur',17),(409,'Sundargarh',17),(410,'Karaikal',27),(411,'Mahe',27),(412,'Puducherry',27),(413,'Yanam',27),(414,'Amritsar',18),(415,'Bathinda',18),(416,'Firozpur',18),(417,'Faridkot',18),(418,'Fatehgarh Sahib',18),(419,'Gurdaspur',18),(420,'Hoshiarpur',18),(421,'Jalandhar',18),(422,'Kapurthala',18),(423,'Ludhiana',18),(424,'Mansa',18),(425,'Moga',18),(426,'Mukatsar',18),(427,'Nawan Shehar',18),(428,'Patiala',18),(429,'Rupnagar',18),(430,'Sangrur',18),(431,'Ajmer',19),(432,'Alwar',19),(433,'Bikaner',19),(434,'Barmer',19),(435,'Banswara',19),(436,'Bharatpur',19),(437,'Baran',19),(438,'Bundi',19),(439,'Bhilwara',19),(440,'Churu',19),(441,'Chittorgarh',19),(442,'Dausa',19),(443,'Dholpur',19),(444,'Dungapur',19),(445,'Ganganagar',19),(446,'Hanumangarh',19),(447,'Juhnjhunun',19),(448,'Jalore',19),(449,'Jodhpur',19),(450,'Jaipur',19),(451,'Jaisalmer',19),(452,'Jhalawar',19),(453,'Karauli',19),(454,'Kota',19),(455,'Nagaur',19),(456,'Pali',19),(457,'Pratapgarh',19),(458,'Rajsamand',19),(459,'Sikar',19),(460,'Sawai Madhopur',19),(461,'Sirohi',19),(462,'Tonk',19),(463,'Udaipur',19),(464,'East Sikkim',20),(465,'North Sikkim',20),(466,'South Sikkim',20),(467,'West Sikkim',20),(468,'Ariyalur',21),(469,'Chennai',21),(470,'Coimbatore',21),(471,'Cuddalore',21),(472,'Dharmapuri',21),(473,'Dindigul',21),(474,'Erode',21),(475,'Kanchipuram',21),(476,'Kanyakumari',21),(477,'Karur',21),(478,'Madurai',21),(479,'Nagapattinam',21),(480,'The Nilgiris',21),(481,'Namakkal',21),(482,'Perambalur',21),(483,'Pudukkottai',21),(484,'Ramanathapuram',21),(485,'Salem',21),(486,'Sivagangai',21),(487,'Tiruppur',21),(488,'Tiruchirappalli',21),(489,'Theni',21),(490,'Tirunelveli',21),(491,'Thanjavur',21),(492,'Thoothukudi',21),(493,'Thiruvallur',21),(494,'Thiruvarur',21),(495,'Tiruvannamalai',21),(496,'Vellore',21),(497,'Villupuram',21),(498,'Dhalai',22),(499,'North Tripura',22),(500,'South Tripura',22),(501,'West Tripura',22),(502,'Almora',33),(503,'Bageshwar',33),(504,'Chamoli',33),(505,'Champawat',33),(506,'Dehradun',33),(507,'Haridwar',33),(508,'Nainital',33),(509,'Pauri Garhwal',33),(510,'Pithoragharh',33),(511,'Rudraprayag',33),(512,'Tehri Garhwal',33),(513,'Udham Singh Nagar',33),(514,'Uttarkashi',33),(515,'Agra',23),(516,'Allahabad',23),(517,'Aligarh',23),(518,'Ambedkar Nagar',23),(519,'Auraiya',23),(520,'Azamgarh',23),(521,'Barabanki',23),(522,'Badaun',23),(523,'Bagpat',23),(524,'Bahraich',23),(525,'Bijnor',23),(526,'Ballia',23),(527,'Banda',23),(528,'Balrampur',23),(529,'Bareilly',23),(530,'Basti',23),(531,'Bulandshahr',23),(532,'Chandauli',23),(533,'Chitrakoot',23),(534,'Deoria',23),(535,'Etah',23),(536,'Kanshiram Nagar',23),(537,'Etawah',23),(538,'Firozabad',23),(539,'Farrukhabad',23),(540,'Fatehpur',23),(541,'Faizabad',23),(542,'Gautam Buddha Nagar',23),(543,'Gonda',23),(544,'Ghazipur',23),(545,'Gorkakhpur',23),(546,'Ghaziabad',23),(547,'Hamirpur',23),(548,'Hardoi',23),(549,'Mahamaya Nagar',23),(550,'Jhansi',23),(551,'Jalaun',23),(552,'Jyotiba Phule Nagar',23),(553,'Jaunpur District',23),(554,'Kanpur Dehat',23),(555,'Kannauj',23),(556,'Kanpur Nagar',23),(557,'Kaushambi',23),(558,'Kushinagar',23),(559,'Lalitpur',23),(560,'Lakhimpur Kheri',23),(561,'Lucknow',23),(562,'Mau',23),(563,'Meerut',23),(564,'Maharajganj',23),(565,'Mahoba',23),(566,'Mirzapur',23),(567,'Moradabad',23),(568,'Mainpuri',23),(569,'Mathura',23),(570,'Muzaffarnagar',23),(571,'Pilibhit',23),(572,'Pratapgarh',23),(573,'Rampur',23),(574,'Rae Bareli',23),(575,'Saharanpur',23),(576,'Sitapur',23),(577,'Shahjahanpur',23),(578,'Sant Kabir Nagar',23),(579,'Siddharthnagar',23),(580,'Sonbhadra',23),(581,'Sant Ravidas Nagar',23),(582,'Sultanpur',23),(583,'Shravasti',23),(584,'Unnao',23),(585,'Varanasi',23),(586,'Birbhum',24),(587,'Bankura',24),(588,'Bardhaman',24),(589,'Darjeeling',24),(590,'Dakshin Dinajpur',24),(591,'Hooghly',24),(592,'Howrah',24),(593,'Jalpaiguri',24),(594,'Cooch Behar',24),(595,'Kolkata',24),(596,'Malda',24),(597,'Midnapore',24),(598,'Murshidabad',24),(599,'Nadia',24),(600,'North 24 Parganas',24),(601,'South 24 Parganas',24),(602,'Purulia',24),(603,'Uttar Dinajpur',24);