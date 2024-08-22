DROP DATABASE IF EXISTS Restaurante;

CREATE DATABASE Restaurante;

USE Restaurante;



-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS Usuarios(
    ID_usuario int(8) AUTO_INCREMENT,
    CPF varchar(11) NOT NULL UNIQUE,
    Nome varchar(255),
    Username varchar(255) NOT NULL UNIQUE,
    Senha varchar(255) NOT NULL,
    Sexo varchar(255),
    Idade varchar(3),
    Endereco varchar(255),
    Email varchar(255) UNIQUE,
    Telefone varchar(12),
    Data_cadastro datetime,
    ID_filial int(3),
    PRIMARY KEY (ID_usuario)
);

-- Tabela de Funcionários
CREATE TABLE IF NOT EXISTS Funcionarios(
    ID_func int(5) AUTO_INCREMENT,
    CPF varchar(11) NOT NULL UNIQUE,
    Nome varchar(255),
    Sexo varchar(255),
    Idade varchar(3),
    Endereco varchar(255),
    Email varchar(255),
    Telefone varchar(12),
    ID_filial int(3),
    Cargo varchar(255),
    Data_contatacao datetime,
    PRIMARY KEY (ID_func)
);

INSERT INTO Usuarios (CPF, Nome, Username, Senha, Sexo, Idade, Endereco, Email, Telefone, Data_cadastro, ID_filial) VALUES 
('12345678901', 'Maria Silva', 'mariasilva', 'senha123', 'Feminino', '25', 'Rua A, 123', 'maria.silva@gmail.com', '9876543210', '2023-01-01 10:00:00', 1),
('23456789012', 'João Souza', 'joaosouza', 'senha234', 'Masculino', '30', 'Rua B, 456', 'joao.souza@gmail.com', '9876543211', '2023-01-02 11:00:00', 2),
('34567890123', 'Ana Pereira', 'anapereira', 'senha345', 'Feminino', '22', 'Rua C, 789', 'ana.pereira@gmail.com', '9876543212', '2023-01-03 12:00:00', 3),
('45678901234', 'Carlos Santos', 'carlossantos', 'senha456', 'Masculino', '28', 'Rua D, 101', 'carlos.santos@gmail.com', '9876543213', '2023-01-04 13:00:00', 4),
('56789012345', 'Julia Oliveira', 'juliaoliveira', 'senha567', 'Feminino', '26', 'Rua E, 202', 'julia.oliveira@gmail.com', '9876543214', '2023-01-05 14:00:00', 5),
('67890123456', 'Pedro Lima', 'pedrolima', 'senha678', 'Masculino', '29', 'Rua F, 303', 'pedro.lima@gmail.com', '9876543215', '2023-01-06 15:00:00', 1),
('78901234567', 'Mariana Costa', 'marianacosta', 'senha789', 'Feminino', '27', 'Rua G, 404', 'mariana.costa@gmail.com', '9876543216', '2023-01-07 16:00:00', 2),
('89012345678', 'Lucas Almeida', 'lucasalmeida', 'senha890', 'Masculino', '24', 'Rua H, 505', 'lucas.almeida@gmail.com', '9876543217', '2023-01-08 17:00:00', 3),
('90123456789', 'Larissa Carvalho', 'larissacarvalho', 'senha901', 'Feminino', '23', 'Rua I, 606', 'larissa.carvalho@gmail.com', '9876543218', '2023-01-09 18:00:00', 4),
('01234567890', 'Ricardo Araújo', 'ricardoaraujo', 'senha012', 'Masculino', '31', 'Rua J, 707', 'ricardo.araujo@gmail.com', '9876543219', '2023-01-10 19:00:00', 5);

-- Inserir dados na tabela Funcionarios
INSERT INTO Funcionarios (CPF, Nome, Sexo, Idade, Endereco, Email, Telefone, ID_filial, Cargo, Data_contatacao) VALUES
('11111111111', 'José da Silva', 'Masculino', '35', 'Rua U, 808', 'jose.silva@gmail.com', '1212121212', 1, 'Garçom', '2023-02-01 10:00:00'),
('22222222222', 'Ana de Souza', 'Feminino', '28', 'Rua V, 909', 'ana.souza@gmail.com', '1313131313', 2, 'Cozinheira', '2023-02-02 11:00:00'),
('33333333333', 'Pedro Ferreira', 'Masculino', '30', 'Rua W, 101', 'pedro.ferreira@gmail.com', '1414141414', 3, 'Gerente', '2023-02-03 12:00:00'),
('44444444444', 'Mariana Costa', 'Feminino', '26', 'Rua X, 202', 'mariana.costa@gmail.com', '1515151515', 4, 'Atendente', '2023-02-04 13:00:00'),
('55555555555', 'Lucas Pereira', 'Masculino', '32', 'Rua Y, 303', 'lucas.pereira@gmail.com', '1616161616', 5, 'Chef', '2023-02-05 14:00:00'),
('66666666666', 'Larissa Almeida', 'Feminino', '29', 'Rua Z, 404', 'larissa.almeida@gmail.com', '1717171717', 1, 'Auxiliar de Cozinha', '2023-02-06 15:00:00'),
('77777777777', 'Ricardo Gomes', 'Masculino', '34', 'Rua AA, 505', 'ricardo.gomes@gmail.com', '1818181818', 2, 'Gerente', '2023-02-07 16:00:00'),
('88888888888', 'Fernanda Santos', 'Feminino', '27', 'Rua BB, 606', 'fernanda.santos@gmail.com', '1919191919', 3, 'Cozinheira', '2023-02-08 17:00:00'),
('99999999999', 'Carlos Oliveira', 'Masculino', '31', 'Rua CC, 707', 'carlos.oliveira@gmail.com', '2020202020', 4, 'Garçom', '2023-02-09 18:00:00'),
('00000000000', 'Julia Araújo', 'Feminino', '33', 'Rua DD, 808', 'julia.araujo@gmail.com', '2121212121', 5, 'Atendente', '2023-02-10 19:00:00');

Select Nome, Email, Sexo, ID_usuario, Idade, CPF, Endereco, Telefone, Data_cadastro, ID_filial
from Usuarios
order by Nome, Email, Sexo, ID_usuario, Idade, CPF, Endereco, Telefone, Data_cadastro, ID_filial asc;

Select Nome, Email, Sexo, Idade, CPF, Endereco, Telefone, ID_func, ID_filial, Cargo, Data_contatacao
from Funcionarios
order by Nome, Email, Sexo, Idade, CPF, Endereco, Telefone, ID_func, ID_filial, Cargo, Data_contatacao asc;