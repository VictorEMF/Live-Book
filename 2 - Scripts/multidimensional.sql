create table dim_data (
    sk_data integer not null,
    nk_data date not null,
    desc_data_completa varchar(60) not null,
    nr_ano integer not null,
    nm_trimestre varchar(20) not null,
    nr_ano_trimestre varchar(20) not null,
    nr_mes integer not null,
    nm_mes varchar(20) not null,
    ano_mes varchar(20) not null,
    nr_semana integer not null,
    ano_semana varchar(20) not null,
    nr_dia integer not null,
    nr_dia_ano integer not null,
    nm_dia_semana varchar(20) not null,
    flag_final_semana char(3) not null,
    flag_feriado char(3) not null,
    nm_feriado varchar(60) not null,
    etl_dt_inicio timestamp not null,
    etl_dt_fim timestamp not null,
    versao integer not null,
    constraint sk_data_pk primary key (sk_data)
);



CREATE TABLE public.dim_livro (
                sk_livro INTEGER NOT NULL,
                nk_livro INTEGER NOT NULL,
                nm_autor VARCHAR(100) NOT NULL,
                nm_livro VARCHAR NOT NULL,
                genero VARCHAR(50) NOT NULL,
                ano INTEGER NOT NULL,
                elt_versao INTEGER NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                elt_dt_fim DATE NOT NULL,
                CONSTRAINT dim_livro_pk PRIMARY KEY (sk_livro)
);


CREATE TABLE public.dim_avaliacao (
                sk_avaliacao INTEGER NOT NULL,
                nk_avaliacao INTEGER NOT NULL,
                nota INTEGER NOT NULL,
                classificacao VARCHAR(10) NOT NULL,
                elt_versao INTEGER NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                elt_dt_fim DATE NOT NULL,
                CONSTRAINT dim_avaliacao_pk PRIMARY KEY (sk_avaliacao)
);


CREATE TABLE public.dim_cliente (
                sk_cliente INTEGER NOT NULL,
                nk_cliente INTEGER NOT NULL,
                nm_cliente VARCHAR(100) NOT NULL,
                idade DATE NOT NULL,
                sexo CHAR(1) NOT NULL,
                bairro VARCHAR(60) NOT NULL,
                elt_versao INTEGER NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                elt_dt_fim DATE NOT NULL,
                CONSTRAINT dim_cliente_pk PRIMARY KEY (sk_cliente)
);


CREATE TABLE public.ft_locacao (
                sk_data INTEGER NOT NULL,
                sk_cliente INTEGER NOT NULL,
                sk_livro INTEGER NOT NULL,
                sk_avaliacao INTEGER NOT NULL,
                data_locacao DATE NOT NULL
);


ALTER TABLE public.ft_locacao ADD CONSTRAINT dim_data_ft_locacao_fk
FOREIGN KEY (sk_data)
REFERENCES public.dim_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_locacao ADD CONSTRAINT dim_livro_ft_locacao_fk
FOREIGN KEY (sk_livro)
REFERENCES public.dim_livro (sk_livro)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_locacao ADD CONSTRAINT dim_avaliacao_ft_locacao_fk
FOREIGN KEY (sk_avaliacao)
REFERENCES public.dim_avaliacao (sk_avaliacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_locacao ADD CONSTRAINT dim_cliente_ft_locacao_fk
FOREIGN KEY (sk_cliente)
REFERENCES public.dim_cliente (sk_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
