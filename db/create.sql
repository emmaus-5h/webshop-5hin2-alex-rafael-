--
-- create tables
--

-- feedback GEE 30 jan 2024
-- juloie hebben pas 1 tabel
-- kijk in de opdracht onder beoordeling, daar staat wat er allemaal in je DB moet zitten (onder anddre 5 tabellen)
-- de tabellen in de databse zijn aan elkaar gekoppeld
-- met een 1:n of n:m relatie
-- er is een video bij de opdracht waar de 1:n zo ongeveer voor gedaan wordt.
-- een voorbeeld van een 1:n relatie is een prodcut : catergorie, maar ook product: merkm (bij jullie gaat het over 1 merk, dus dan gebruikt je caterogei)

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  rating_id INTEGER,
  kwaliteit_id VARCHAR(20)
);

CREATE TABLE category (
  CategoryID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name VARCHAR(255)
);

CREATE TABLE ProductCategories(
  id INTEGER PRIMARY KEY AUTOCREMENT,
  products_id INTEGER,
  category_id INTEGER
);

CREATE TABLE rating (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE kwaliteit (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  cijfer_kwaliteit VARCHAR(10),
  waarom_cijfer VARCHAR(40)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, rating_id) values ('Oversized BMW Hoodie', 'Blaas nieuw leven in een klassiek kledingstuk met je eigen kunst. Deze hoodie heeft een uniseks ontwerp mmet zijnaden waadoor het kledingstuk op de lange termijn zijn vorm houdt. Met een ruime kangoeroezak voor meer dagelijkse bruikbaarheid, een comfortabele pasvorm op maat en meerdere kleuren om uit te kiezen - deze hoodies bieden een gezellige draagervaring boordevol stijl.', '816905633-0', 49.95, '3 sterren');
insert into products (name, description, code, price, rating_id) values ('Duffel Bag BMW', 'Licht en sterk, onze custom gemaakte tas is een geweldige manier om jouw dag makkelijker te maken. Perfect voor de sportschool of een dagtripje. Deze tas is gemakkelijk te dragen en zijn klaar voor elk terrein.', '077030122-3', 69.95,'5 sterren');
insert into products (name, description, code, price, rating_id) values ('BMW Puffer Jacket', 'De BMW Puffer Jacket is gemaakt van hoog kwaliteit katoen. Met deze jas steelt u de show en hij is ook niet bang om vies te worden.', '445924201-X', 69.95, '4 sterren');
insert into products (name, description, code, price, rating_id) values ('Airpods Pro BMW Case Cover','Deze custom Airpods case beschermt uw oortjes tegen krassen en valschade. Met elk gepersonaliseerde airpods case krijg je een metalen karabijnhaak voor moeiteloze transportatie.','693155505-7', 39.95, '5 sterren');
insert into products (name, description, code, price, rating_id) values ('Women Capri Legging', 'Creëer een unieke ervaringmet deze leggings. Met deze BMW Capri legging steel jij de show, want er zit een butt lift in.', '686928463-6', 14.99, '5 sterren');
insert into products (name, description, code, price, rating_id) values ('BMW M8 Competition Watch', 'Deze BMW velg horloge laat het hart van elke motorsport-fan sneller kloppen. Deze horloge combineert technische perfectie met attentie tot detail naar het realistische design.', '492662523-7', 149.99,'2 sterren');
insert into products (name, description, code, price, rating_id) values ('BMW Pet Bowl', 'Deze custom BMW dierenkom introduceert meer personaliteit in de voertijd. Deze speciale BMW voerbak is gemaakt van keramiek, dit is van hoge kwaliteit waardoor uw huisdier dit niet kapot maakt.', '987432654-9', 49.95,'3 sterren');
insert into products (name, description, code, price, rating_id) values ('BMW Ice Bucket With Tongs', 'Breng een persoonlijke filter bij elke bijeenkomst die koude drankjes icet. Elke gepersonaliseerde BMW Ice Bucket komt met een eigen set tang vanm hoge kwaliteit.', '0873245123-1', 79.99,'3 sterren');
insert into products (name, description, code, price, rating_id) values ('BMW Flip Flops', 'Laat uw voeten ademen! Met en hoog kwaliteit print, deze slippers zijn echt een must-have voor op het strand of tijdens de hete zomerdagen.', '985463211-D', 39.95,'4 sterren');
insert into products (name, description, code, price, rating_id) values ('Twill BMW Hat', 'The Twill  pet is één van onze meest populaire producten en is perfect voor het actieve buitenleven en sportgelegenheden. De pet is gemaakt van katoen.', '231456781-B', 39.99,'2 sterren');
insert into products (name, description, code, price, rating_id) values ('BMW Car mats (set of 4)', 'Geef een persoonlijke touch aan het interieur aan uw auto met deze custom gemaakte automatten. Ze komen in een set van 4, inclusief 2 front- en 2 achtermatten. De matten beschikken ook over een anti-slip laag, zodat ze altijd op de goede plek blijven zitten', '10987624-C', 124.99,'5 sterren');
insert into products (name, description, code, price, rating_id) values ('BMW Flag', 'Als u wilt laten zien dat u een BMW fan bent met het hele hart is dit het perfecte product voor jou. Laat iedereen merken dat je de grootste BMW fan bent door middel van deze vlag','23998742-D', 34.99,'5 sterren');

insert into rating (name) values ('5 sterren');
insert into rating (name) values ('4 sterren');
insert into rating (name) values ('3 sterren');
insert into rating (name) values ('2 sterren');
insert into rating (name) values ('1 sterren');

insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('1/10', 'Ten eerste is het product niet goed genoeg, daarnaasr is de kwaliteit van het product echt slecht.');
insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('2/10','Het product is van slechte kwaliteit, heel je torso kriebelt ervan.');
insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('3/10','Het product gebruikt de meestvoorkomende stof, maar toch is het niet goed genoeg. Daarnaast zijn de details slecht verwerkt.');
insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('4/10','Het product voelt normaal aan, ook de details. Maar het product is door de mensen in Afrika gemaakt die onderbetaald worden.');
insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('5/10','Goede kwaliteit en de details zijn netjes afgewerkt, maar het design van het product is lelijk.');
insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('6/10','Niks te klagen over het product, is een veelvoorkomende design.');
insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('7/10','Het product bevat goede kwaliteit, een bijzonder design en is gemaakt in de EU.');
insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('8/10','Het product is gemaakt in een fabriek in de EU, heeft een uniek design, de details zijn met de hand afgewerkt en heeft een garantiegeldigheid.');
insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('9/10','Het product is volledig met de hand gemaakt in de EU, de details zien er perfect uit en je kunt zelfs met klarna betalen als je dit product besteld.');
insert into kwaliteit (cijfer_kwaliteit, waarom_cijfer) values ('10/10','Helemaal niks te klagen, met de hand gemaakt, details zijn perfect verwerkt, super uniek design en een hele goede garantiegeldigheid en veel betalingsmogelijkheden.');