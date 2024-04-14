
CREATE TABLE movies_actors (
  movie_id INT REFERENCES movies (movie_id),
  actor_id INT REFERENCES actors (actor_id),
  PRIMARY KEY (movie_id, actor_id)
);

-- ---------------------------------------------------------
--  Records of 'movies' database > table : movies_actors
-- ---------------------------------------------------------
INSERT INTO movies_actors (movie_id,actor_id) VALUES
('1','52'),
('2','50'),
('3','23'),
('4','26'),
('5','14'),
('6','6'),
('7','2'),
('8','15'),
('8','40'),
('9','20'),
('10','38'),
('11','9'),
('12','21'),
('13','9'),
('14','17'),
('15','25'),
('16','9'),
('17','21'),
('18','38'),
('19','47'),
('20','30'),
('21','43'),
('22','12'),
('23','10'),
('23','49'),
('24','7'),
('25','15'),
('25','31'),
('25','32'),
('25','33'),
('26','46'),
('27','46'),
('28','14'),
('28','29'),
('28','39'),
('29','8'),
('30','48'),
('31','47'),
('32','27'),
('33','31'),
('33','32'),
('33','33'),
('34','43'),
('35','15'),
('36','6'),
('37','35'),
('37','36'),
('37','37'),
('38','2'),
('38','4'),
('38','35'),
('38','36'),
('38','37'),
('39','39'),
('40','31'),
('40','32'),
('40','33'),
('41','46'),
('42','3'),
('43','8'),
('44','13'),
('45','30'),
('46','9'),
('47','24'),
('48','45'),
('49','42'),
('50','15'),
('51','52'),
('52','35'),
('53','52');