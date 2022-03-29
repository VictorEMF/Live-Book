
CREATE TABLE public.dim_autor (
                sk_autor INTEGER NOT NULL,
                nk_autor INTEGER NOT NULL,
                nm_autor VARCHAR(60) NOT NULL,
                pais VARCHAR(70) NOT NULL,
                elt_versao INTEGER NOT NULL,
                etl_dt_inicio DATE NOT NULL,
                elt_dt_fim DATE NOT NULL,
                CONSTRAINT dim_autor_pk PRIMARY KEY (sk_autor)
);


CREATE TABLE public.dim_data (
                sk_data INTEGER NOT NULL,
                nk_data DATE NOT NULL,
                desc_data_completa VARCHAR(60) NOT NULL,
                nr_ano INTEGER NOT NULL,
                nm_trimestre VARCHAR(20) NOT NULL,
                nr_ano_trimestre VARCHAR(20) NOT NULL,
                nr_mes INTEGER NOT NULL,
                nm_mes VARCHAR(20) NOT NULL,
                ano_mes VARCHAR(20) NOT NULL,
                nr_semana INTEGER NOT NULL,
                ano_semana VARCHAR(20) NOT NULL,
                nr_dia INTEGER NOT NULL,
                nr_dia_ano INTEGER NOT NULL,
                nm_dia_semana VARCHAR(20) NOT NULL,
                flag_final_semana CHAR(3) NOT NULL,
                flag_feriado CHAR(3) NOT NULL,
                nm_feriado VARCHAR(60) NOT NULL,
                etl_dt_inicio TIMESTAMP NOT NULL,
                etl_dt_fim TIMESTAMP NOT NULL,
                versao INTEGER NOT NULL,
                CONSTRAINT sk_data_pk PRIMARY KEY (sk_data)
);


CREATE TABLE public.dim_livro (
                sk_livro INTEGER NOT NULL,
                sk_autor INTEGER NOT NULL,
                nk_livro INTEGER NOT NULL,
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
                nm_cliente VARCHAR(50) NOT NULL,
                idade INTEGER NOT NULL,
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
                sk_avaliacao INTEGER NOT NULL
);


ALTER TABLE public.dim_livro ADD CONSTRAINT dim_autor_dim_livro_fk
FOREIGN KEY (sk_autor)
REFERENCES public.dim_autor (sk_autor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

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
