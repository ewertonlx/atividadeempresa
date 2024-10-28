CREATE TABLE empresas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) UNIQUE,
    endereco TEXT,
    ano_fundacao INT,
    tipo VARCHAR(50)
);
CREATE TABLE politicas_empresa (
    nome_empresa VARCHAR(255),
    nome_politica VARCHAR(255),
    idPolitica INT NOT NULL,
    PRIMARY KEY (nome_empresa, nome_politica),
    FOREIGN KEY (nome_empresa) REFERENCES empresas(nome),
    FOREIGN KEY (idPolitica) REFERENCES politicas_antirracistas(idPolitica)
);

CREATE TABLE politicas_antirracistas (
    idPolitica INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) UNIQUE,
    descricao TEXT
);
