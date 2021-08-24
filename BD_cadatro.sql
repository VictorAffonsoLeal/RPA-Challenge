create table tbl_pessoa(
id  INT Primary Key auto_increment, 
nome VARCHAR(300),
cidade VARCHAR(300),
estado VARCHAR(150)

);

create table tbl_contato(
id INT Primary Key auto_increment,
pessoa INT, 
foreign Key(tbl_pessoa) references tbl_pessoa(cod),
email VARCHAR(150),
ddd VARCHAR(3),
telefone VARCHAR(15)
);

create table tbl_statusMensagemEnviada(
id INT Primary Key auto_increment,
pessoa INT,
foreign Key(nome) references tbl_pessoa(cod),
contato INT,
foreign key(tbl_contato) references  tbl_contato(cod),
assunto VARCHAR(1000),
mensagemEnviada VARCHAR(MAX),
retornoSite VARCHAR(MAX)
);