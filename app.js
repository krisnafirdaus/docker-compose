const http = require('http');

const port = 3001;
const host = '0.0.0.0';

const server = http.createServer((req, res) => {
    console.log(`Request Masuk: ${req.method} ${req.url}`);

    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('Hello, World!');
});

server.listen(port, host, () => {
    console.log(`Server running at http://${host}:${port}/`);
});