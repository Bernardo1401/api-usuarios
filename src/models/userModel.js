const pool = require("../config/database");

const getUsuarios = async () => {
    const result = await pool.query("SELECT * FROM usuarios");
    return result.rows;
};

const getUsuariosById = async (id) => {
    const result = await pool.query("SELECT * FROM usuarios WHERE id = $1", [id]);
    return result.rows[0];
};

const deleteUsuarios = async (id) => {
    const result = await pool.query("DELETE FROM usuarios WHERE id = $1 RETURNING *", [id]);

    if (result.rowCount === 0) {
        return { error: "Usuário não encontrado." };
    }
    return { message: "Usuário deletado com sucesso." };
};
const updateUsuarios = async (id, data) => {
    const { name, email, password } = data;
    const result = await pool.query("UPDATE usuarios SET name = $1, email = $2, password = $3 WHERE id = $4 RETURNING *", [name, email, password, id]);
    return result.rows[0];
};

const createUsuarios = async (name, email, password, photo) => {
    const result = await pool.query("INSERT INTO usuarios (name, email, password, photo) VALUES ($1, $2, $3, $4) RETURNING *", [name, email, password, photo]);
    return result.rows[0];
};

module.exports = { getUsuarios, getUsuariosById, deleteUsuarios, updateUsuarios, createUsuarios };