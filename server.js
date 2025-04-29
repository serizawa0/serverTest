// Importation du module http
const http = require('http');
const express = require('express')
const app = express()
// Définition du port
const PORT = 3000;

app.get('/', (req,res)=> {
    console.log('Get on port 3000');
    res.end('Bonjour depuis Express!')
    
})

// Création du serveur
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Bonjour depuis Node.js !\n');
});

// Démarrage du serveur
app.listen(PORT, () => {
  console.log(`Serveur démarré sur http://localhost:${PORT}`);
});
