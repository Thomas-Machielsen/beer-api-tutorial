require('dotenv').config();
const express       = require('express');
const app           = express();
const defaultPort   = 3030;
const port          = process.env.PORT || defaultPort;

app.listen(port, () => console.log(`App listening at http://localhost:${port}`)); //eslint-disable-line no-console
