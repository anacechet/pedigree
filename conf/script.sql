create schema pedigree;

create table `registro` (
`id_registro` int(6) not null auto_increment,
`nomecachorro` varchar(45) default null,
`sobrenomecachorro` varchar(45) default null,
`datanascimento` date default null,
`sexo` varchar(45) default null,
`cor` varchar(45) default null,
primary key (`id_registro`))
ENGINE = InnoDB;

INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Akira', 'Murphy', '2019-11-02', 'Feminino', 'Akita Branco');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Bartolomeu', 'Murphy', '2019-11-02', 'Masculino', 'Akita Branco');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Chiara', 'Murphy', '2019-11-02', 'Feminino', 'Akita Branco');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Cheike', 'Sulivan', '2019-08-11', 'Masculino', 'Beagle Tricolor');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Elvis', 'Smith', '2020-12-27', 'Masculino', 'Bernesse Preto Tricolor');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Aplha', 'Connor', '2018-03-24', 'Masculino', 'Border Colie Tricolor Preto e Branco ');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Apolo', 'Connor', '2018-03-24', 'Masculino', 'Border Colie Tricolor Preto e Branco ');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Dusty', 'Donnell', '2019-10-03', 'Masculino', 'Bull Terrier Branco');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Clark', 'Gallagher', '2020-06-06', 'Masculino', 'Cane Corso Preto');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Frajola', 'Moore', '2017-03-06', 'Masculino', 'Dobermann Preto');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Apache', 'Murphy', '2017-11-06', 'Masculino', 'Akita Branco');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Blant', 'Martin', '2016-03-07', 'Feminino', 'Akita Branco');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Bingo', 'Connor', '2015-06-08', 'Masculino', 'Border Colie Tricolor Preto e Branco');
INSERT INTO `pedigree`.`registro` (`nomecachorro`, `sobrenomecachorro`, `datanascimento`, `sexo`, `cor`) VALUES ('Cristal', 'Petit', '2015-07-16', 'Feminino', 'Border Colie Tricolor Preto e Branco');

create table `canil` (
`id_canil` int(6) not null auto_increment,
`nomecanil` varchar (45) not null,
`nomeproprietario` varchar (45) not null,
`sobrenomeproprietario` varchar (45) not null,
`email` varchar (45) not null,
`rua` varchar (45) not null,
`bairro` varchar (45) not null,
`cidade` varchar (45) not null,
`estado` varchar (45) not null,
primary key (`id_canil`))
ENGINE = InnoDB;

INSERT INTO `pedigree`.`canil` (`nomecanil`, `nomeproprietario`, `sobrenomeproprietario`, `email`, `rua`, `bairro`, `cidade`, `estado`) VALUES ('Criamor', 'Ayumi', 'Blanc', 'ayumiblanc@gmail.com', 'Av. Santa Rosa', 'São Luís', 'Belo Horizonte', 'MInas Gerais');
INSERT INTO `pedigree`.`canil` (`nomecanil`, `nomeproprietario`, `sobrenomeproprietario`, `email`, `rua`, `bairro`, `cidade`, `estado`) VALUES ('Ilha Canina', 'Akemi', 'Duvak', 'akemiduvak@gmail.com', 'Av. Arthur Guimarães', 'Palmares', 'Belo Horizonte', 'MInas Gerais');
INSERT INTO `pedigree`.`canil` (`nomecanil`, `nomeproprietario`, `sobrenomeproprietario`, `email`, `rua`, `bairro`, `cidade`, `estado`) VALUES ('Pet Pampa', 'Analua', 'Caron', 'analuacaron@gmail.com', 'R. XV de Novembro', 'Centro', 'Blumenau', 'Santa Catarina');
INSERT INTO `pedigree`.`canil` (`nomecanil`, `nomeproprietario`, `sobrenomeproprietario`, `email`, `rua`, `bairro`, `cidade`, `estado`) VALUES ('Petgree', 'Bernardo', 'Colin', 'becolin@gmail.com', 'Estrada Geral do Gaspar Alto', 'Fundos', 'Gaspar', 'Santa Catarina');
INSERT INTO `pedigree`.`canil` (`nomecanil`, `nomeproprietario`, `sobrenomeproprietario`, `email`, `rua`, `bairro`, `cidade`, `estado`) VALUES ('Puros', 'Camilo', 'Boyer', 'camiloboyer@gmail.com', 'R. Gilson Costa Xavier', 'Santo Antônio', 'Florianópolis', 'Santa Catarina');
INSERT INTO `pedigree`.`canil` (`nomecanil`, `nomeproprietario`, `sobrenomeproprietario`, `email`, `rua`, `bairro`, `cidade`, `estado`) VALUES ('Recanto Dog', 'Cássio', 'Eller', 'cassioeller@gmail.com', 'Estrada do Engenho', 'Areal ', 'Pelotas', 'Rio Grande do Sul');
INSERT INTO `pedigree`.`canil` (`nomecanil`, `nomeproprietario`, `sobrenomeproprietario`, `email`, `rua`, `bairro`, `cidade`, `estado`) VALUES ('Dipet', 'Diogo', 'Aubert', 'diogoaubert@gmail.com', 'R. Rouxinol', 'Jardim Santa Maria', 'Cuiabá', 'Mato Grosso');

create table `raca` (
`id_raca` int not null auto_increment,
`nomeraca` varchar (45) not null,
primary key (`id_raca`))
ENGINE = InnoDB;

INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Akita');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('American Staffordshire Terrier');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Basset Hound');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Beagle');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Bernesse');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Border Collie');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Buldogue');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Buldogue Francês');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Bull Terrier');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Cane Corso');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Chow Chow');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Dobermann');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Dogo Argentino');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Fila Brasileiro');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Golden Retriever');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Labrador');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Lhasa Apso');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Maltês');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Pastor Belga Malinois');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Pastor Alemão');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Pastor Branco Suíço');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Pit Bull');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Pug');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Rottweilwer');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Schnauzer');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Shih Tzu');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Spitz Alemão');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Stafforshire Bull Terrier');
INSERT INTO `pedigree`.`raca` (`nomeraca`) VALUES ('Yorkshire Terrier');

create table `ninhada` (
`id_ninhada` int not null auto_increment,
`canil` varchar (45) not null,
`datanascimento` date,
`nomepai` varchar (45) not null,
`nomemae` varchar (45) not null,
`id_raca` int not null,
primary key (`id_ninhada`),
foreign key (`id_raca`) references raca(`id_raca`))
ENGINE = InnoDB;

INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Criamor', '2020-03-18', 'Alfa', 'Afrodite', '25');
INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Criamor', '2019-08-11', 'Barça', 'Ametista', '4');
INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Criamor', '2019-11-02', 'Apache', 'Blant', '1');
INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Criamor', '2020-12-27', 'Chopp', 'Blair', '5');
INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Ilha Canina', '2020-06-06', 'Drey', 'Duquesa', '10');
INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Ilha Canina', '2018-03-24', 'Bingo', 'Cristal', '6');
INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Pet Pampa', '2020-05-19', 'Cooper', 'Doroth', '19');
INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Petgree', '2020-07-03', 'Galego', 'Esmeralda', '15');
INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Puros', '2019-10-03', 'Ego', 'Greta', '9');
INSERT INTO `pedigree`.`ninhada` (`canil`, `datanascimento`, `nomepai`, `nomemae`, `id_raca`) VALUES ('Puros', '2017-03-06', 'Flitz', 'Frida', '12');

create table `cachorro` (
`id_cachorro` int not null auto_increment,
`nomecachorro` varchar (45) not null,
`sobrenomecachorro` varchar (45) not null,
`nomepai` varchar (45) not null,
`nomemae` varchar (45) not null,
`nomeavopaterno` varchar (45) not null,
`nomeavopaterna` varchar (45) not null,
`nomeavomaterno` varchar (45) not null,
`nomeavomaterna` varchar (45) not null,
`sexo` varchar (45) not null,
`cor` varchar (45) not null,
`datanascimento` date,
`id_raca` int not null,
`id_registro` int not null,
`id_canil` int not null,
`id_ninhada` int not null,
primary key (`id_cachorro`),
foreign key (`id_raca`) references raca(`id_raca`),
foreign key (`id_registro`) references registro(`id_registro`),
foreign key (`id_canil`) references canil(`id_canil`),
foreign key (`id_ninhada`) references ninhada(`id_ninhada`))
ENGINE = InnoDB;

INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Akira', 'Murphy', 'Apache', 'Blant', 'Luigi', 'Anubis', 'Athos', 'Prenda', 'Feminino', 'Akita Branco', '2019-11-02', '1', '1', '1', '3');
INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Bartolomeu', 'Murphy', 'Apache', 'Blant', 'Luigi', 'Anubis', 'Athos', 'Prenda', 'Masculino', 'Akita Branco', '2019-11-02', '1', '2', '1', '3');
INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Chiara', 'Murphy', 'Apache', 'Blant', 'Luigi', 'Anubis', 'Athos', 'Prenda', 'Feminino', 'Akita Branco', '2019-11-02', '1', '3', '1', '3');
INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Cheike', 'Sulivan', 'Barça', 'Ametista', 'Dangelo', 'Fênix', 'Baguete', 'Shiva', 'Masculino', 'Beagle Tricolor', '2019-08-11', '4', '4', '1', '2');
INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Elvis', 'Smith', 'Chopp', 'Blair', 'Ravi', 'Gold', 'Flocky', 'Tequila', 'Masculino', 'Bernesse Preto Tricolor', '2020-12-27', '5', '5', '1', '4');
INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Alpha', 'Connor', 'Bingo', 'Cristal', 'Finn', 'Darling', 'Kripton', 'Atena', 'Masculino', 'Border Colie Tricolor Preto e Branco ', '2018-03-24', '6', '6', '2', '6');
INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Apolo', 'Connor', 'Bingo', 'Cristal', 'Finn', 'Darling', 'Kripton', 'Atena', 'Masculino', 'Border Colie Tricolor Preto e Branco ', '2018-03-24', '6', '7', '2', '6');
INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Dusty', 'Donnell', 'Ego', 'Greta', 'Arlo', 'Gaia', 'Half', 'Cersei', 'Masculino', 'Bull Terrier Branco', '2019-10-03', '9', '8', '5', '9');
INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Clark', 'Gallagher', 'Drey', 'Duquesa', 'Edras', 'Hela', 'Iron', 'Storm', 'Masculino', 'Cane Corso Preto', '2020-06-06', '10', '9', '2', '5');
INSERT INTO `pedigree`.`cachorro` (`nomecachorro`, `sobrenomecachorro`, `nomepai`, `nomemae`, `nomeavopaterno`, `nomeavopaterna`, `nomeavomaterno`, `nomeavomaterna`, `sexo`, `cor`, `datanascimento`, `id_raca`, `id_registro`, `id_canil`, `id_ninhada`) VALUES ('Frajola', 'Moore', 'Flitz', 'Frida', 'Efraim', 'Nala', 'Pongo', 'Pandora', 'Masculino', 'Dobermann Preto', '2017-03-06', '12', '10', '5', '10');

create table `cachorrocanil` (
`id_cachorrocanil` int not null auto_increment,
`id_canil` int not null,
`id_cachorro` int not null,
`datatranferencia` date,
primary key (`id_cachorrocanil`),
foreign key (`id_canil`) references canil(`id_canil`),
foreign key (`id_cachorro`) references cachorro(`id_cachorro`))
ENGINE = InnoDB;

INSERT INTO `pedigree`.`cachorrocanil` (`id_canil`, `id_cachorro`, `datatranferencia`) VALUES ('1', '1', '2020-01-12');
INSERT INTO `pedigree`.`cachorrocanil` (`id_canil`, `id_cachorro`, `datatranferencia`) VALUES ('2', '7', '2018-11-26');