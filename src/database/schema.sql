CREATE DATABASE users;

\c users;

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    photo TEXT
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER REFERENCES usuarios(id) ON DELETE CASCADE
);

INSERT INTO usuarios (name, email, password, photo) VALUES 
    ('Luiz', 'Luiz@gmail.com', 'amods'),
    ('Caiox', 'caiox@gmail.com', 'amods'),
    ('Benzinho', 'Benzinho@gmail.com', 'amods');


    INSERT INTO usuarios (name, email, password, photo) VALUES 
    ('Ana Livia', 'ana.livia@gmail.com', 'amods', NULL),
    ('Cadu Pescador', 'caduzinho@gmail.com', 'amods', NULL),
    ('Deide Costa', 'deide.costa@gmail.com', 'amods', NULL),
    ('Yasmin Abola', 'yasmin.abola@gmail.com', 'amods', NULL),
    ('Sheila Meosako', 'sheila.meosako@gmail.com', 'amods', NULL),
    ('Nino Abravel', 'nino.abaravanel@gmail.com', 'amods', NULL),
    ('Ben Mendes', 'ben.mendes@gmail.com', 'amods', NULL),
    ('Vinicius Rocha', 'vinicius.rocha@gmail.com', 'amods', NULL),
    ('Negão Original', 'negao.original@gmail.com', 'amods', NULL),
    ('Caio Malvadeza', 'caiox.malvadao@gmail.com', 'amods', NULL),
    ('Sérgio Ramos', 'sergio.ramos@gmail.com', 'amods', NULL),
    ('Nalivia Martins', 'nalivia.martins@gmail.com', 'amods', NULL),
    ('Camila Gouveia', 'camila.gouveia@gmail.com', 'amods', NULL),
    ('Dudinha Gueto', 'dudinha.gueto@gmail.com', 'amods', NULL),
    ('Larissa Pinto', 'larissa.pinto@gmail.com', 'amods', NULL),
    ('Thiago Gomes', 'thiago.gomes@gmail.com', 'amods', NULL),
    ('Isabela Monteiro', 'isabela.monteiro@gmail.com', 'amods', NULL),
    ('Pedro Almeida', 'pedro.almeida@gmail.com', 'amods', NULL),
    ('Sofia Cardoso', 'sofia.cardoso@gmail.com', 'amods', NULL),
    ('André Vieira', 'andre.vieira@gmail.com', 'amods', NULL),
    ('Vanessa Teixeira', 'vanessa.teixeira@gmail.com', 'amods', NULL),
    ('Bruno Santana', 'bruno.santana@gmail.com', 'amods', NULL),
    ('Carolina Nunes', 'carolina.nunes@gmail.com', 'amods', NULL),
    ('Eduardo Farias', 'eduardo.farias@gmail.com', 'amods', NULL),
    ('Aline Ribeiro', 'aline.ribeiro@gmail.com', 'amods', NULL),
    ('Diego Castro', 'diego.castro@gmail.com', 'amods', NULL),
    ('Renata Lopes', 'renata.lopes@gmail.com', 'amods', NULL),
    ('Gustavo Mendes', 'gustavo.mendes@gmail.com', 'amods', NULL),
    ('Natália Cunha', 'natalia.cunha@gmail.com', 'amods', NULL),
    ('Marcelo Carvalho', 'marcelo.carvalho@gmail.com', 'amods', NULL),
    ('Débora Azevedo', 'debora.azevedo@gmail.com', 'amods', NULL),
    ('Rodrigo Batista', 'rodrigo.batista@gmail.com', 'amods', NULL),
    ('Cláudia Moraes', 'claudia.moraes@gmail.com', 'amods', NULL),
    ('Fábio Correia', 'fabio.correia@gmail.com', 'amods', NULL),
    ('Tatiane Silva', 'tatiane.silva@gmail.com', 'amods', NULL),
    ('Leonardo Reis', 'leonardo.reis@gmail.com', 'amods', NULL),
    ('Priscila Andrade', 'priscila.andrade@gmail.com', 'amods', NULL),
    ('Alexandre Campos', 'alexandre.campos@gmail.com', 'amods', NULL),
    ('Viviane Freitas', 'viviane.freitas@gmail.com', 'amods', NULL),
    ('Daniela Borges', 'daniela.borges@gmail.com', 'amods', NULL),
    ('Henrique Santos', 'henrique.santos@gmail.com', 'amods', NULL),
    ('Luana Martins', 'luana.martins@gmail.com', 'amods', NULL),
    ('Fernando Rocha', 'fernando.rocha@gmail.com', 'amods', NULL),
    ('Amanda Lima', 'amanda.lima@gmail.com', 'amods', NULL),
    ('Rogério Souza', 'rogerio.souza@gmail.com', 'amods', NULL),
    ('Elaine Costa', 'elaine.costa@gmail.com', 'amods', NULL),
    ('Maurício Almeida', 'mauricio.almeida@gmail.com', 'amods', NULL),
    ('Tatiana Ribeiro', 'tatiana.ribeiro@gmail.com', 'amods', NULL),
    ('César Monteiro', 'cesar.monteiro@gmail.com', 'amods', NULL),
    ('Paula Mendes', 'paula.mendes@gmail.com', 'amods', NULL);
        

INSERT INTO post (title, content, user_id) VALUES 
    ('Post 1', 'Conteúdo do post 1', 1),
    ('Post 2', 'Conteúdo do post 2', 2),
    ('Post 3', 'Conteúdo do post 3', 3);