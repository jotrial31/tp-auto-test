FROM python

COPY ./requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "robot --outputdir /app/reports/robot/ /app/test/system/machine.robot" ]
