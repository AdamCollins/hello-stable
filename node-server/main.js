const express = require('express');
const app = express();
const hbs =  require('hbs');

if(!process.argv[2]){
	console.log('Please provide a port number. npm start <port>');
	return;
}
const port = process.argv[2];
let nodeName = process.argv[3] || 'default';

app.set('view-engine','hbs');
app.use(express.static(__dirname + '/public'));


app.get('/', (req, res) => {
	res.render('index.hbs', { nodeName: nodeName, layout:'layout.hbs' });
	console.log('GET request / @${nodeName}');
});

app.listen(port, () => {
	console.log(`${nodeName} app listening on port ${port}!`)
});