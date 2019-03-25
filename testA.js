var express = require('express');

const app = express();
const PORT = process.env.PORT || 3456;
app.use(express.static('./dist'));

app.listen(PORT);
console.log(`👂 Listening on http://localhost:${PORT}/ 👂`);
