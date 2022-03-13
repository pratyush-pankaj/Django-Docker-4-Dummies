# dentist
A Website for dental clinic

## Installation

## Requirements
docker v > 19.03
docker-compose v > 1.26

## Process
```bash
cp .env.sample .env
docker-compose build
docker-compose up -d
```

## Start app
[localhost:8000](http://localhost:8000/)

## Open Database
```bash
docker-compose exec db mysql -u {username} -p
```

## Forced Migration
```bash
docker-compose exec app python manage.py migrate 
```

## Running on VSCode Remote Container
Uncomment the following lines in manage.py
```bash
from dotenv import load_dotenv
load_dotenv()
```

Install MySql client extention. And configure to the running db.
Host: host.docker.internal
Port: 5504

Then replace the commented things in settings.py in Databases settings
```bash
"host.docker.internal"
"5504"
```


## License
[MIT](https://choosealicense.com/licenses/mit/)
