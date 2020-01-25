const express = require('express');
const app = express();
const port = 3000;
let nodeName = 'default';
app.get('/', (req, res) => {
	res.send(`Hello World! from ${nodeName}`)
});

app.listen(port, () => {
	console.log(`Example app listening on port ${port}!`)
});