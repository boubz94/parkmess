const Pool = require("pg").Pool;
const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "parkMe",
  password: "boubou",
  port: 5432,
});

// crud account
const getUsers = (request, response) => {
  pool.query(
    "SELECT * FROM api.account ORDER BY user_id ASC ",
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).json(results.rows);
    }
  );
};

const getUserByID = (request, response) => {
  const id = parseInt(request.params.id);

  pool.query(
    "select * from api.account where user_id = $1",
    [id],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).json(results.rows);
    }
  );
};

const createUser = (request, response) => {
  const { password, username, email } = request.body;
  pool.query(
    "insert into api.account (password,username,email) values($1,$2,$3)",
    [password, username, email],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).send(`account added with id: ${results.insertId}`);
    }
  );
};

const updateUser = (request, response) => {
  const id = parseInt(request.params.id);
  const { username, email } = request.body;

  pool.query(
    "UPDATE api.account SET username = $1, email = $2 WHERE user_id = $3",
    [username, email, id],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).send(`User modified with ID: ${id}`);
    }
  );
};
const deleteUser = (request, response) => {
  const id = parseInt(request.params.id);

  pool.query(
    "DELETE FROM api.account WHERE user_id = $1",
    [id],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).send(`User deleted with ID: ${id}`);
    }
  );
};

// crud parking
const getParkings = (request, response) => {
  pool.query("select * from api.parkings", (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};

const getParkingsByID = (request, response) => {
  const id = parseInt(request.params.id);
  pool.query(
    "select * from parkings where park_id=$1",
    [id],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).json(results.rows);
    }
  );
};

const createPark = (request, response) => {
  const { descriptionPark, namePark, rue, numero, commune } = request.body;
  pool.query(
    "insert into api.parkings (descriptionPark, namePark, rue, numero, communue) values ($1,$2,$3,$4,$5)",
    [descriptionPark, namePark, rue, numero, commune],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).send(`parking added => ${results.id}`);
    }
  );
};
const updatePark = (request, response) => {
  const id = request.params.id;
  const { descriptionPark, namePark, rue, numero, commune } = request.body;
  pool.query(
    "update api.parkings set descriptionPark=$1, namePark=$2, rue=$3, numero=$4, communue=$5 where park_id=$6",
    [descriptionPark, namePark, rue, numero, commune, id],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).send(`User modified with ID: ${id}`);
    }
  );
};

const deletePark = (request, response) => {
  const id = parseInt(request.params.id);

  pool.query(
    "DELETE FROM api.parkings WHERE park_id = $1",
    [id],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).send(`parking deleted with ID: ${id}`);
    }
  );
};
// crud comment

const getCommentary = (request, response) => {
  pool.query("select * from api.commentary", (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};

const getCommentaryByID = (request, response) => {
  const id = parseInt(request.params.id);
  pool.query(
    "select * from commentary where com_id=$1",
    [id],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).json(results.rows);
    }
  );
};

const createCom = (request, response) => {
  const { user_id, park_id, comment } = request.body;
  pool.query(
    "insert into api.commentary (user_id, park_id, comment,) values ($1,$2,$3)",
    [user_id, park_id, comment],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).send(`coming added => ${results.id}`);
    }
  );
};

const deletecom = (request, response) => {
  const id = parseInt(request.params.id);

  pool.query(
    "DELETE FROM api.commentary WHERE com_id = $1",
    [id],
    (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).send(`coming deleted with ID: ${id}`);
    }
  );
};

module.exports = {
  //account
  getUsers,
  getUserByID,
  createUser,
  updateUser,
  deleteUser,
  // park
  getParkings,
  getParkingsByID,
  createPark,
  updatePark,
  deletePark,
  // commentary
  getCommentary,
  getCommentaryByID,
  deletecom,
};
