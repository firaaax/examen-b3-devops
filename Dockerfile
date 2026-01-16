# Utilisation de l'image officielle Node.js 18 (demandé dans le sujet)
FROM node:18-alpine

# Création du répertoire de travail dans le conteneur
WORKDIR /app

# Copie des fichiers de dépendances
COPY package.json ./

# Installation des dépendances
RUN npm install

# Copie du reste du code source
COPY . .

# Exposition du port de l'application (Port 3000 comme dans server.js)
EXPOSE 3000

# Commande de démarrage
CMD ["node", "server.js"]