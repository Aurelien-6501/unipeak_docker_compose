# Utiliser l'image Node.js officielle
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Cloner le dépôt GitHub
RUN git clone https://github.com/Aurelien-6501/unipeak_api.git .

# Supprimer le dossier .git pour réduire la taille de l'image
RUN rm -rf .git

# Installer les dépendances
RUN npm install

# Exposer le port de l'API
EXPOSE 3000

# Lancer l'application
CMD ["npm", "start"]
