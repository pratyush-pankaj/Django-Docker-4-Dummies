# dentist
A Website for dental clinic

How to RUN the App ->

Requirements -
    1. docker v > 19.03
    2. docker-compose v > 1.26

Process -
    1. cp .env-sample .env
    2. docker-compose build
    3. docker-compose up -d

Start app -
    localhost:8000 (yourport)
    -- to check errors
        manually run -> docker-compose exec app python manage.py runserver 0.0.0.0:8000

Open Database -
    docker-compose exec db mysql -u {username} -p

Forced Migration -
    docker-compose exec app python manage.py migrate 

Thanks