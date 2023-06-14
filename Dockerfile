# On utilise python comme image de base.
FROM python:3.8-slim-buster

# On renseigne dossier principale de l'application.
WORKDIR /app

# On copie le fichier requirements.txt
COPY requirements.txt .

# On lance le pip install du fichier requirements.
RUN pip install --no-cache-dir -r requirements.txt

# on copie le fichier app.py
COPY app.py .

EXPOSE 8501

# On renseigne la ligne de commande pour exécuter l'app.
CMD ["streamlit", "run", "app.py"]
