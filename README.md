# dentist
A Website for dental clinic

## Installation

## Requirements
docker v > 19.03
docker-compose v > 1.26

## Process
```bash
cp .env-sample .env
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

## License
[MIT](https://choosealicense.com/licenses/mit/)