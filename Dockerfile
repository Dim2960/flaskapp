# Utilisez une image de base Python
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers dans le conteneur
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir flask gunicorn

# Exposer le port 80
EXPOSE 80

# Lancer l'application avec Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]