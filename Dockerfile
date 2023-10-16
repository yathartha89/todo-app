FROM python:3

RUN pip3 install django==3.2

COPY . .

RUN pip3 install -r requirements.txt

RUN python3 manage.py makemigrations

RUN python3 manage.py migrate


CMD ["python3", "manage.py", "runserver"]

