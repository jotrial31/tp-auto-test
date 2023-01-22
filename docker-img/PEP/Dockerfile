FROM python

COPY ./requirements.txt .

RUN apt update && apt upgrade -y
RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "flake8 --format=html --output-file=PEP8-reports.html --htmldir=/app/reports/flake8  /app/" ]