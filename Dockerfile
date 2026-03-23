# Étape 1 : image de base Python
FROM python:3.13-slim

# Étape 2 : copier les fichiers de dépendances
WORKDIR /app
COPY requirements.txt .

# Étape 3 : installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Étape 4 : copier le code de l'application
COPY . .

# Étape 5 : exposer le port 5000
EXPOSE 5000

# Étape 6 : lancer l'application Flask
CMD ["python", "app.py"]
