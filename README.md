# README

## GROUP 8: TASK MANAGEMENT SYSTEM

- Member 1: Trinh Minh Tam - 22070597
- Member 2: Tran Thu Hien - 22070560
- Member 3: Le Thi Xuan Hao - 22070362
- Member 4: Vu Thi Thu Huong - 21070575

## Starting server

- Run on your terminal `docker-compose up`
- Open browser at http://localhost:3000/
- Continue your work on a new terminal tab. Leave this terminal tab open until you want to stop the server.

## Stop server

`CTRL + C`

### Accessing docker container
**Remember to run this before any of the command below**

`docker exec -it ins20065-proj_app_1 /bin/bash`

### Bundle install
Installing required libraries, you can run this command multiple time. If there is an error, let make sure this command has been executed successfully.

`bundle install`

### Migrate database

`rails db:migrate`

## Optional

### Rails console

`rails c`
