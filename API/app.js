const express = require("express");
const app = express();
const port = 3002;
const db = require("./queries");

// Middleware
app.use(express.json());

app.get("/", (request, response) => {
  response.json({ info: "ParkMe api ON" });
});

//account
app.get("/users", db.getUsers);
app.get("/users/:id", db.getUserByID);
app.post("/users", db.createUser);
app.put("/user/:id", db.updateUser);
app.delete("/user/:id", db.deleteUser);
//park
app.get("/parkings", db.getParkings);
app.get("/parkings/:id", db.getParkingsByID);
app.post("/parkings", db.createPark);
app.put("/parkings/:id", db.updatePark);
app.delete("/parkings/:id", db.deletePark);
//commentary
app.get("/com", db.getCommentary);
app.get("/com/:id", db.getCommentaryByID);
app.delete("/com/:id", db.deletecom);

app.listen(port, () => {
  console.log(`App running on port ${port}.`);
});
