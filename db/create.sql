--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Oversized BMW Hoodie', 'Blaas nieuw leven in een klassiek kledingstuk met je eigen kunst. Deze hoodie heeft een uniseks ontwerp mmet zijnaden waadoor het kledingstuk op de lange termijn zijn vorm houdt. Met een ruime kangoeroezak voor meer dagelijkse bruikbaarheid, een comfortabele pasvorm op maat en meerdere kleuren om uit te kiezen - deze hoodies bieden een gezellige draagervaring boordevol stijl.', '816905633-0', 49.95);
insert into products (name, description, code, price) values ('Duffel Bag BMW', 'Licht en sterk, onze custom gemaakte tas is een geweldige manier om jouw dag makkelijker te maken. Perfect voor de sportschool of een dagtripje. Deze tas is gemakkelijk te dragen en zijn klaar voor elk terrein.', '077030122-3', 69.95);
insert into products (name, description, code, price) values ('BMW Puffer Jacket', 'De BMW Puffer Jacket is gemaakt van hoog kwaliteit katoen. Met deze jas steelt u de show en hij is ook niet bang om vies te worden.', '445924201-X', 69.95);
insert into products (name, description, code, price) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);

