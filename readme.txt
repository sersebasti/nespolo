# Per lo Sviluppo
1. Prima di aprire la cartella vscode appurarsi che sia commentato nel docker file: 
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "nespolo.wsgi"]

2. Con vs code scegliere opzione run in container 

3. Per avviare server: 
python manage.py runserver 0.0.0.0:8000

# Per il Deploy - senza modifiche al db MySql (Fare da riga di comando senza vscode)
1. Prima di fare il deploy appurarsi che non sia commentato nel docker file: 
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "nespolo.wsgi"]

2. docker build --no-cache -t sersebasti/nespolo_backend:x.x.x .

3. docker push sersebasti/nespolo_backend:x.x.x

4. Su Potainer stoppare container, duplicarlo, aggiornare versione e lanciare il Deploy