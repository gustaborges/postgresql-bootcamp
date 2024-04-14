CREATE TABLE movies_revenues (
  revenue_id SERIAL PRIMARY KEY,
  movie_id INT REFERENCES movies (movie_id),
  revenues_domestic NUMERIC (10,2),
  revenues_international NUMERIC (10,2)
);

-- ---------------------------------------------------------
--  Records of 'movies' database > table : movies_revenues
-- ---------------------------------------------------------
INSERT INTO movies_revenues (revenue_id,movie_id,revenues_domestic,revenues_international) VALUES
('1','45','22.2','1.3'),
('2','13','199.4','201.2'),
('3','23','102.1',NULL),
('4','44','158.7',NULL),
('6','1','27.1',NULL),
('7','53',NULL,NULL),
('17','18','260.3','210.9'),
('9','39','28.1',NULL),
('5','35','461.2','314.2'),
('13','2','83.4',NULL),
('15','21','19.6',NULL),
('8','36','290.3','247.8'),
('11','43','44.1',NULL),
('12','29','23.1',NULL),
('14','4','33.3',NULL),
('10','37','309.1','166.2'),
('16','49','180.1','177.3'),
('18','14','46.6',NULL),
('21','11','330.3','348.1'),
('20','28','107.9','106.2'),
('19','19',NULL,NULL),
('23','50','192.1','182.4'),
('22','5',NULL,NULL),
('27','41','64.1','200.3'),
('24','48','659.2','1528.1'),
('25','30','16.9',NULL),
('26','10','55.7','106.3'),
('30','12','188.2','273.4'),
('28','9','128.1','85.1'),
('29','3',NULL,NULL),
('32','17','2.9','10.2'),
('31','34','11.1','265.4'),
('33','31','404.1','418.1'),
('37','6','8.2','23.5'),
('35','16','11.1','82.5'),
('36','32','374.1','410.4'),
('34','25','1.1','13.8'),
('38','51','71.2','62.5'),
('40','26','37.8','46.4'),
('48','42','11.3','66.1'),
('39','33','337','554'),
('51','40','11.9','23.2'),
('41','46','39.9','35.8'),
('42','7','0.3','2.2'),
('49','20','2.1','9.1'),
('45','52','107.5','77.5'),
('44','27','15.1','186.7'),
('47','8',NULL,NULL),
('46','24','2.4','7.1'),
('43','38','0.5','0.4'),
('50','22','124.9','484.1'),
('52','15','59.3','115.5'),
('53','47','54.5','104.7');