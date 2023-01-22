FROM python

COPY ./requirements.txt .

RUN apt update && apt upgrade -y
RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "radon raw -s -i /app/test -O /app/reports/radon/rapport-RAW.txt /app/" ]