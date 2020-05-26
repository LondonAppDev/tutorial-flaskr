FROM python:3.8-alpine

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

RUN pip install --upgrade pip

COPY ./flaskr /flaskr

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
