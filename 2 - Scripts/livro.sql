create table livro(
    isbn int primary key,
    nome varchar(100),
    genero varchar(100),
    ano int,
    cod_autor int,
    foreign key(cod_autor) references autor(cod_autor)
);



insert into livro (isbn, nome, genero, ano, cod_autor) values (1, 'Orfão X', 'Suspense', 2016, 1);
insert into livro (isbn, nome, genero, ano, cod_autor) values (2, 'Correr Ou Morrer', 'Ação', 2009, 2);
insert into livro (isbn, nome, genero, ano, cod_autor) values (3, 'Prova de Fogo', 'Romance', 2010, 2);
insert into livro (isbn, nome, genero, ano, cod_autor) values (4, 'A Cura Mortal', 'Ação', 2011, 2);
insert into livro (isbn, nome, genero, ano, cod_autor) values (5, 'Ordem de Extermínio', 'Romance', 2012, 2);
insert into livro (isbn, nome, genero, ano, cod_autor) values (6, 'O Código da Febre', 'Ficção Científica', 2016, 2);
insert into livro (isbn, nome, genero, ano, cod_autor) values (7, 'A Lâmina da Assassina', 'Fantasia', 2014, 3);
insert into livro (isbn, nome, genero, ano, cod_autor) values (8, 'Trono de Vidro', 'Literatura Fantástica', 2012, 3);
insert into livro (isbn, nome, genero, ano, cod_autor) values (9, 'Coroa da Meia-Noite', 'Ficção Juvenil', 2013, 3);
insert into livro (isbn, nome, genero, ano, cod_autor) values (10, 'Herdeira do Fogo', 'Literatura Fantástica', 2014, 3);
insert into livro (isbn, nome, genero, ano, cod_autor) values (11, 'Rainha das Sombras', 'Literatura Fantástica', 2015, 3);
insert into livro (isbn, nome, genero, ano, cod_autor) values (12, 'Império de Tempestades', 'Literatura Fantástica', 2019, 3);
insert into livro (isbn, nome, genero, ano, cod_autor) values (13, 'Torre do Alvorecer', 'Literatura Fantástica', 2018, 3);
insert into livro (isbn, nome, genero, ano, cod_autor) values (14, 'Reino de Cinzas', 'Literatura Fantástica', 2019, 3);
insert into livro (isbn, nome, genero, ano, cod_autor) values (15, 'Assassin''s Creed Origins: Juramento do Deserto', 'Ficção Científica', 2019, 4);
insert into livro (isbn, nome, genero, ano, cod_autor) values (16, 'O Oráculo Oculto', 'Mitologia Grega', 2017, 5);
insert into livro (isbn, nome, genero, ano, cod_autor) values (17, 'A Profecia Das Sombras', 'Mitologia Grega', 2018, 5);
insert into livro (isbn, nome, genero, ano, cod_autor) values (18, 'O Labirinto de Fogo', 'Literatura Fantástica', 2019, 5);
insert into livro (isbn, nome, genero, ano, cod_autor) values (19, 'A Tumba do Tirano', 'Literatura Fantástica', 2020, 5);
insert into livro (isbn, nome, genero, ano, cod_autor) values (20, 'A Torre de Nero', 'Comédia Fantasiosa', 1990, 5);
insert into livro (isbn, nome, genero, ano, cod_autor) values (21, 'Good Omens', 'Romance', 2015, 6);
insert into livro (isbn, nome, genero, ano, cod_autor) values (22, 'Viviam Contra o Apocalipze', 'Aventura', 1962, 7);
insert into livro (isbn, nome, genero, ano, cod_autor) values (23, 'Uma Dobra no tempo', 'Ficção Cientifica', 1979, 8);
insert into livro (isbn, nome, genero, ano, cod_autor) values (24, 'O Mochileiro das Galáxias', 'Ficção Cientifica', 1980, 9);
insert into livro (isbn, nome, genero, ano, cod_autor) values (25, 'O Restaurante no fim do universo', 'Ficção Cientifica', 1982, 9);
insert into livro (isbn, nome, genero, ano, cod_autor) values (26, 'A Vida o universo e tudo mais', 'Ficção Cientifica', 1984, 9);
insert into livro (isbn, nome, genero, ano, cod_autor) values (27, 'Até Mais e obrigado pelos Peixes', 'Ficção Cientifica', 1992, 9);
insert into livro (isbn, nome, genero, ano, cod_autor) values (28, 'Praticamente Inofensiva', 'Romance', 2016, 9);
insert into livro (isbn, nome, genero, ano, cod_autor) values (29, 'Mentira Perfeita', 'Romance', 2011, 10);
insert into livro (isbn, nome, genero, ano, cod_autor) values (30, 'Belo Desastre', 'Aventura', 2015, 11);
insert into livro (isbn, nome, genero, ano, cod_autor) values (31, 'Caçadores de Trolls', 'Fantasia', 1995, 12);
insert into livro (isbn, nome, genero, ano, cod_autor) values (32, 'A Bússola de Ouro', 'Fantasia', 1997, 13);
insert into livro (isbn, nome, genero, ano, cod_autor) values (33, 'A Faca Sutil', 'Fantasia', 2000, 13);
insert into livro (isbn, nome, genero, ano, cod_autor) values (34, 'A Luneta  âmbar', 'Criminal', 2005, 13);
insert into livro (isbn, nome, genero, ano, cod_autor) values (35, 'Os Homens que Não Amavam as Mulheres', 'Criminal', 2006, 14);
insert into livro (isbn, nome, genero, ano, cod_autor) values (36, 'A Menina que Brincava com Fogo', 'Criminal', 2007, 14);
insert into livro (isbn, nome, genero, ano, cod_autor) values (37, 'A Rainha do Castelo de Ar', 'Mistério', 2015, 14);
insert into livro (isbn, nome, genero, ano, cod_autor) values (38, 'Garota na teia de aranha', 'Mistério', 2017, 15);
insert into livro (isbn, nome, genero, ano, cod_autor) values (39, 'Homem que buscava sua sombra', 'Mistério', 2019, 15);
insert into livro (isbn, nome, genero, ano, cod_autor) values (40, 'Garota marcada para morrer', 'Suspense', 2016, 15);
