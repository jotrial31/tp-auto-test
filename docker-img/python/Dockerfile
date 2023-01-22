FROM python

WORKDIR /app

COPY ./app /app
COPY ./requirements.txt /app

RUN pip3 install --no-cache-dir -r requirements.txt

ENV FLASK_APP="main"

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]