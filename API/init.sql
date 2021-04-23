create schema api;
SET search_path TO api;

create table  parkings(
    park_id SERIAL PRIMARY KEY,
    descriptionPark TEXT,
    namePark TEXT,
    rue TEXT,
    numero INT,
    communue TEXT

);

create table  account(    
    user_id SERIAL PRIMARY KEY,
    password VARCHAR(50),
    username VARCHAR(50),
    email VARCHAR(255),
    lastlog TIMESTAMP

);

CREATE TABLE   roles(
   role_id serial PRIMARY KEY,
   role_name VARCHAR (255) UNIQUE NOT NULL
);

CREATE TABLE   account_roles (
  user_id INT NOT NULL,
  role_id INT NOT NULL,
  grant_date TIMESTAMP,
  PRIMARY KEY (user_id, role_id),
  FOREIGN KEY (role_id)
      REFERENCES roles (role_id),
  FOREIGN KEY (user_id)
      REFERENCES account (user_id)
);

CREATE TABLE   commentary (
    com_id SERIAL PRIMARY KEY,
    user_id INT,
    park_id INT,
    comment TEXT,
    FOREIGN KEY(user_id) REFERENCES account(user_id),
    FOREIGN KEY(park_id) REFERENCES parkings(park_id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP

);


-- role
insert into roles (role_name) values('admin');
insert into roles (role_name) values('customer');

-- account roles

insert into account_roles (user_id, role_id) values (1,1);
insert into account_roles (user_id, role_id) values (2,1);
insert into account_roles (user_id, role_id) values (3,2);
insert into account_roles (user_id, role_id) values (4,2);
insert into account_roles (user_id, role_id) values (5,2);
insert into account_roles (user_id, role_id) values (6,2);
insert into account_roles (user_id, role_id) values (7,2);
insert into account_roles (user_id, role_id) values (8,2);
insert into account_roles (user_id, role_id) values (9,2);
insert into account_roles (user_id, role_id) values (10,2);
insert into account_roles (user_id, role_id) values (11,2);
insert into account_roles (user_id, role_id) values (12,2);
insert into account_roles (user_id, role_id) values (13,2);
insert into account_roles (user_id, role_id) values (14,2);
insert into account_roles (user_id, role_id) values (15,2);


-- commentary

insert into commentary (user_id, park_id, comment) values (1, 1, 'transform killer synergies');
insert into commentary (user_id, park_id, comment) values (2, 2, 'generate cross-platform methodologies');
insert into commentary (user_id, park_id, comment) values (3, 3, 'benchmark world-class models');
insert into commentary (user_id, park_id, comment) values (4, 4, 'grow wireless ROI');
insert into commentary (user_id, park_id, comment) values (5, 5, 'enable magnetic deliverables');
insert into commentary (user_id, park_id, comment) values (6, 6, 'brand distributed e-markets');
insert into commentary (user_id, park_id, comment) values (7, 7, 'transition interactive networks');
insert into commentary (user_id, park_id, comment) values (8, 8, 'deliver extensible channels');
insert into commentary (user_id, park_id, comment) values (9, 9, 'monetize back-end infrastructures');
insert into commentary (user_id, park_id, comment) values (10, 10, 'benchmark distributed e-business');
insert into commentary (user_id, park_id, comment) values (11, 11, 'optimize enterprise markets');
insert into commentary (user_id, park_id, comment) values (12, 12, 'leverage strategic vortals');
insert into commentary (user_id, park_id, comment) values (13, 13, 'orchestrate innovative mindshare');
insert into commentary (user_id, park_id, comment) values (14, 14, 'disintermediate front-end eyeballs');
insert into commentary (user_id, park_id, comment) values (15, 15, 'deploy open-source content');

-- account

insert into account (password,username,email) values('boubou','bou','bou@boubou');
insert into account (password,username,email) values('admin','admin','admin@boubou');
insert into account (password,username,email) values('boubou','bou','bou@boubou');
insert into account (password, username, email) values ('wYPNsd', 'hhedditch0', 'fchalles0@nih.gov');
insert into account (password, username, email) values ('an37nWgbLsp', 'chayesman1', 'bdirocca1@163.com');
insert into account (password, username, email) values ('izcJPycRai', 'pwoolnough2', 'dpoxson2@hatena.ne.jp');
insert into account (password, username, email) values ('UZZr6Gw274OF', 'hmcgibbon3', 'jhumphrys3@usnews.com');
insert into account (password, username, email) values ('0a6ztg', 'hbotterman4', 'ebediss4@amazon.co.uk');
insert into account (password, username, email) values ('oeqcsZU8Taq', 'ipadson5', 'jcockrill5@moonfruit.com');
insert into account (password, username, email) values ('2bvusGmPd8zA', 'bcastello6', 'wsylvaine6@elpais.com');
insert into account (password, username, email) values ('HMDxLPHY', 'nshwalbe7', 'zdimitrijevic7@rambler.ru');
insert into account (password, username, email) values ('Czg7bO9VQ', 'sslixby8', 'gfaveryear8@cornell.edu');
insert into account (password, username, email) values ('BkrAfRxvONg', 'sminchin9', 'ggirodias9@blogtalkradio.com');
insert into account (password, username, email) values ('ldu14fZQb', 'garnotta', 'qwiddocksa@sogou.com');
insert into account (password, username, email) values ('PmbFAS', 'dbootyb', 'bshawb@mysql.com');
insert into account (password, username, email) values ('Jxo3nUS8B1', 'stonbridgec', 'eselkirkc@youtu.be');
insert into account (password, username, email) values ('Q4RO2W', 'amiddlewickd', 'sgosneyed@cafepress.com');
insert into account (password, username, email) values ('ZtYWrh6', 'cslixbye', 'lclacsone@behance.net');
-- parking

insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('incentivize bleeding-edge users', 'Oxygen', 'Heath', '3', 'Kyzyl-Burun');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('extend web-enabled methodologies', 'Flu Rescue', 'Carpenter', '836', 'Akune');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('transform 24/7 communities', 'Testosterone Cypionate', 'Killdeer', '762', 'Xiaodukou');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('whiteboard impactful e-markets', 'Enteric Coated Aspirin', 'Magdeline', '403', 'Serrana');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('empower value-added eyeballs', 'String Beans', 'Sloan', '4', 'Nangkasari');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('morph B2B synergies', 'Flucelvax', 'Dryden', '855', 'Nikol’sk');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('scale synergistic eyeballs', 'ZONISAMIDE', 'Autumn Leaf', '8715', 'San Ignacio');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('target synergistic schemas', 'Ondansetron', 'Dryden', '0908', 'Orahovica Donja');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('mesh global e-markets', 'Treatment Set TS331794', 'Crowley', '4', 'Enschede');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('mesh out-of-the-box initiatives', 'Testosterone Cypionate', 'Iowa', '4', 'Flórina');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('productize B2C mindshare', 'Phenylalanine', 'Logan', '4', 'Fotolívos');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('iterate turn-key communities', 'ANTI BACTERIAL HAND SANITIZER', 'Meadow Vale', '8', 'Baizhang');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('innovate killer relationships', 'Lodosyn', 'Graceland', '712', 'Xiqi');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('aggregate interactive web-readiness', 'Doxycycline', 'Maryland', '067', 'Yinzhu');
insert into parkings (descriptionPark, namePark, rue, numero, communue) values ('iterate rich interfaces', 'Kali Carbonicum Kit Refill', 'Sutteridge', '20', 'Arras');



