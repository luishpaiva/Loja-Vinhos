/* 1. Faça o modelo físico. */

DROP DATABASE IF EXISTS LojaVinhos;

CREATE DATABASE IF NOT EXISTS LojaVinhos;

USE LojaVinhos;

CREATE TABLE LojaVinhos.Regiao(
	codRegiao BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	nomeRegiao VARCHAR(100) NOT NULL,
	descricaoRegiao TEXT
);

CREATE TABLE LojaVinhos.Vinicola(
	codVinicola BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	nomeVinicola VARCHAR(100),
	descricaoVinicola TEXT,
	foneVinicola VARCHAR(15),
	emailVinicola VARCHAR(15),
	codRegiao BIGINT UNSIGNED,
	FOREIGN KEY (codRegiao) REFERENCES LojaVinhos.Regiao(codRegiao)
);

CREATE TABLE LojaVinhos.Vinho(
	codVinho BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	nomeVinho VARCHAR(50),
	tipoVinho VARCHAR(30),
	anoVinho INT,
	descricaoVinho TEXT,
	codVinicola BIGINT UNSIGNED,
	FOREIGN KEY (codVinicola) REFERENCES LojaVinhos.Vinicola(codVinicola)
);

/* 2. Insira pelo menos 5 registros em cada tabela, mantendo as integridades referenciais. */

INSERT INTO LojaVinhos.Regiao (nomeRegiao, descricaoRegiao)
VALUES 	('Abruzzo', 'Abruzzo, uma região emergente da Itália, é conhecida principalmente pelos saborosos vinhos Montepulciano d’Abruzzo, que podem ser exemplares muito agradáveis e cheios de fruta, com ótima acidez e, por vezes, que apresentam excelente relação qualidade e preço.'),
	('Bavária', 'A Bavaria, ou o Estado Livre da Baviera (em alemão: Bayern ou Freistaat Bayern, Baviera: Boarn ou Freistoot Boarn), é um dos dezesseis estados federais da Alemanha e já teve status de reino.'),
        ('Califórnia', 'Os vinhos da Califórnia estão, sem dúvida, entre os melhores do mundo. São vinhos bem concentrados e encorpados sem perder a elegância e a complexidade de sabores, bem ao estilo do Novo Mundo.'),
        ('Jerez', 'Em Jerez de la Frontera são produzidos os vinhos fortificados que carregam o mesmo nome dessa região da Andaluzia, no sul da Espanha.'),
        ('Languedoc-Roussillon', 'A região de Languedoc-Roussillon localiza-se no sul da França e produz alguns dos melhores vinhos do mundo'),
        ('Mallorca', 'Mallorca é, nos dias de hoje, mais conhecida como um centro turístico, mas que possui uma longa história no mundo vinícola.'),
        ('Patagônia', 'A região da Patagônia, área vinícola mais meridional da América do Sul, é famosa por dar origem a vinhos tintos elegantes e complexos, elaborados a partir das uvas Pinot Noir e Malbec.'),
        ('Porto', 'Porto, que na época romana era chamado de Portus Cale, é a cidade que deu origem ao nome de Portugal.'),
        ('Rio Grande do Sul', 'A região do Rio Grande do Sul destaca-se por produzir cerca de 80% do total de vinhos brasileiros, utilizando principalmente processos não mecanizados provenientes de viticultura familiar em pequenas propriedades.'),
        ('Toscana', 'Brunello di Montalcino, Chianti e Vino Nobile di Montepulciano são os mais famosos vinhos produzidos na Toscana, uma das regiões vinícolas mais importantes da Itália.'),
	('Épernay', 'Épernay é uma comuna francesa do departamento do Marne da região de Grande Leste.'),
        ('Barossa Valley', 'O Barossa Valley é um vale no sul da Austrália localizado a 60 quilômetros a nordeste do centro da cidade de Adelaide. O vale é formado pelo rio Norte do Pará. É notável como uma importante região produtora de vinho e destino turístico.'),
        ('São José dos Pinhais', 'Apenas 30 quilômetros separam a capital paranaense de uma região rural e bucólica que reúne o melhor da cultura trazida ao Paraná pelos imigrantes italianos e poloneses no século 19: a Colônia Mergulhão e a Colônia Murici, em São José dos Pinhais.'),
        ('São Francisco', 'São Francisco, no norte da Califórnia, é uma cidade com colinas situada na ponta de uma península cercada pelo Oceano Pacífico e pela Baía de São Francisco.'),
        ('Kunság', 'Kunság é uma região histórica, etnográfica e geográfica da Hungria, correspondente a uma antiga entidade política criada por e para os Cumans ou Kuns.');

INSERT INTO LojaVinhos.Vinicola (nomeVinicola, descricaoVinicola, foneVinicola, emailVinicola, codRegiao)
VALUES 	('Barba', 'Desrição Barba', '74939392', 'barba@email.com', 1),
	('Bonacchi', 'Desrição Bonacchi', '97483931', 'bona@email.com', 1),
        ('Masciarelli', 'Desrição Masciarelli', '94727232', 'masci@email.com', 1),
        ('Weingut Max Müller I', 'Desrição Weingut Max Müller I', '64829472', 'mmi@email.com', 2),
        ('Schloss Sommerhausen', 'Desrição Schloss Sommerhausen', '35384731', 'ss@email.com', 2),
        ('Johannes Deppisch Weinhaus am Main Winery', 'Desrição Johanens Deppisch Weunhaus', '38291074', 'jdpw@email.com', 2),
        ('V. Sattui Winery', 'Desrição V. Sattui Winery', '34279835', 'vsw@email.com', 3),
        ('Chateau Montelena Winery', 'Desrição Chateau Montelena Winery', '89023182', 'cmw@email.com', 3),
        ('Beringer Vineyards', 'Desrição Beringer Vineyards', '53108738', 'bg@email.com', 3),
        ('Bodegas Fundador', 'Desrição Bodegas Fundador', '66843991', 'funda@email.com', 4),
        ('Bodegas Luis Perez', 'Desrição Bodegas Luis Perez', '90726492', 'blp@email.com', 4),
	('Bodegas Tio Pepe', 'Desrição Bodegas Tio Pepe', '24681357', 'tpepe@email.com', 4),
        ('M. Chapoutier', 'Desrição M. Chapoutier', '97516527', 'm_c@email.com', 5),
        ('Mas de Daumas Gassac', 'Desrição Mas de Daumas Gassac', '45498363', 'mddg@email.com', 5),
        ('Schröder & Schÿler', 'Desrição Schröder & Schÿler', '28380837', 'ss@email.com', 5),
        ('Finca Son Bordils', 'Desrição Finca Son Bordils', '74927212', 'finca@email.com', 6),
        ('Vins Miquel Gelabert', 'Desrição Vins Miquel Gelabert', '48749729', 'vmg@email.com', 6),
        ('Son Sureda Ric estate', 'Desrição Son Sureda Ric estate', '84012721', 'ssre@email.com', 6),
        ('Humberto Canale Bodega', 'Desrição Humberto Canale Bodega', '39479200', 'hcb@email.com', 7),
        ('Bodega Del Fin del Mundo', 'Desrição Bodega Del Fin del Mundo', '87462712', 'bdfdm@email.com', 7),
        ('Vinas del Nant y Fall Establecimiento Agroturistico', 'Desrição Vinas del Nant', '73633627', 'dnfea@email.com', 7),
        ('Companhia Real do Vinho do Porto', 'Desrição Companhia Real do Vinho do Porto', '64812819', 'cr@email.com', 8),
	('Caves Calém', 'Desrição Caves Calém', '64840172', 'calem@email.com', 8),
        ('Quinta das Cascalhas', 'Desrição Quinta das Cascalhas', '92748284', 'qdc@email.com', 8),
        ('Cave Geisse', 'Desrição Cave Geisse', '77883137', 'cg@email.com', 9),
        ('Vinícola Miolo', 'Desrição Vinícola Miolo', '56245122', 'miolo@email.com', 9),
        ('Casa Valduga', 'Desrição Casa Valduga', '89099098', 'cv@email.com', 9),
        ('Vinícola Sovestro in Poggio', 'Desrição Sovestro in Poggio', '79736483', 'vsinp@email.com', 10),
        ('Vinícola Ciacci Piccolomini d’Aragona', 'Desrição Ciacci Piccolomini d’Aragona', '66231726', 'cpda@email.com', 10),
        ('Vinícola Avignonesi', 'Desrição Avignonesi', '98327328', 'avign@email.com', 10),
        ('Vale do Loire', 'Descrição Vale do Loire', '749372733', 'loire@email.com', 11),
        ('Heifer Station Wines', 'Descrição Heifer Station Wines', '947492737', 'hsw@email.com', 12),
        ('Vinícola Durigan', 'Descrição Vinícola Durigan', '364859672', 'durig@email.com', 13),
        ('Beneduce Vineyards', 'Descrição Beneduce Vineyards', 584726484, 'bvy@email.com', 14),
        ('Concha Y Toro', 'Descrição Concha Y Toro', '284759573', 'cyt@email.com', 15);

INSERT INTO LojaVinhos.Vinho (nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicola)
VALUES 	('Château Gazin', 'Cabernet Sauvignon', 1963, 'Descrição Château Gazin', 1),
	('Salentein Killka', 'Malbec', 1974, 'Descrição Salentein Killka', 2),
        ('Alma Negra', 'Pinot Noir', 1964, 'Descrição Alma Negra', 3),
        ('La Hacienda Reserva', 'Tannat', 2004, 'Descrição La Hacienda Reserva', 4),
        ('Mancura Etnia', 'Chardonnay', 1988, 'Descrição Mancura Etnia', 5),
        ('Lapostolle Apalta', 'Merlot', 1999, 'Descrição Lapostolle Apalta', 6),
        ('Vistamar Brisa', 'Carménère', 1846, 'Descrição Vistamar Brisa', 7),
        ('Alamos Red', 'Syrah', 1899, 'Descrição Alamos Red', 8),
        ('La Mancha', 'Tempranillo', 1927, 'Descrição La Mancha', 9),
        ('Saint Felicien', 'Sauvignon Blanc', 1947, 'Descrição Saint Felicien', 10),
        ('Mad Chief Cabernet', 'Cabernet Sauvignon', 1966, 'Descrição Mad Chief Cabernet', 11),
	('Clos de Los Siete', 'Malbec', 1951, 'Descrição Clos de Los Siete', 12),
        ('Amayna', 'Pinot Noir', 1967, 'Descrição Amayna', 13),
        ('Noble Alianza', 'Tannat', 2010, 'Descrição Noble Alianza', 14),
        ('Miuluna Puglia', 'Chardonnay', 1993, 'Descrição Miuluna Puglia', 15),
        ('Carmen Insigne', 'Merlot', 1882, 'Descrição Carmen Insigne', 16),
        ('Valle del Casablanca', 'Carménère', 1979, 'Descrição Valle del Casablanca', 17),
        ('Porcupine Ridge', 'Syrah', 1987, 'Descrição Porcupine Ridge', 18),
        ('Ribera del Duero', 'Tempranillo', 1994, 'Descrição Ribera del Duero', 19),
        ('Lapostolle Grand Selection', 'Sauvignon Blanc', 2008, 'Descrição Lapostolle Grand Selection', 20),
        ('Arrogant Frog Tutti-Frutti', 'Cabernet Sauvignon', 1920, 'Descrição Arrogant Frog Tutti-Frutti', 21),
	('La Linda', 'Malbec', 1934, 'Descrição La Linda', 22),
        ('Vallontano', 'Pinot Noir', 1943, 'Descrição Vallontano', 23),
        ('Traversa', 'Tannat', 1931, 'Descrição Traversa', 24),
        ('Quinta de Bons Ventos', 'Chardonnay', 1959, 'Descrição Quinta de Bons Ventos', 25),
        ('Angelica Zapata', 'Merlot', 1980, 'Descrição Angelica Zapata', 26),
        ('Valle del Leyda', 'Carménère', 1997, 'Descrição Valle del Leyda', 27),
        ('Moulin de Gassac', 'Syrah', 2004, 'Descrição Moulin de Gassac', 28),
        ('Rioja', 'Tempranillo', 2000, 'Descrição Rioja', 29),
        ('Jeio Spumante Cuvée', 'Sauvignon Blanc', 1899, 'Descrição Jeio Spumante Cuvée', 30);

/* 3. Faça uma consulta que liste o nome e ano dos  vinhos, incluindo o nome da vinícula e o nome da região que ela pertence. */

SELECT
	vinho.nomeVinho, vinho.anoVinho, vinicola.nomeVinicola, regiao.nomeRegiao
FROM
	LojaVinhos.Vinho vinho
INNER JOIN
	LojaVinhos.Vinicola vinicola
	ON vinho.codVinicola = vinicola.codVinicola
INNER JOIN
	LojaVinhos.Regiao regiao
	ON vinicola.codRegiao = regiao.codRegiao
ORDER BY
	vinho.nomeVinho ASC;

/* 4. Crie um usuário Somellier, que deve ter acesso pelo localhost ao Select da tabela Vinho e ao Select do campo codVinicula e nomeVinicula da tabela Vinicula.
      Além disto, ele somente pode realizar 40 consultas por hora. */

DROP USER IF EXISTS Sommelier@"localhost";

CREATE USER Sommelier@"localhost" IDENTIFIED BY "senha" WITH MAX_QUERIES_PER_HOUR 40;

GRANT SELECT ON LojaVinhos.Vinho TO Sommelier@"localhost";

GRANT SELECT (codVinicola, nomeVinicola) ON LojaVinhos.Vinicola TO Sommelier@"localhost";