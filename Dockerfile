FROM python:3.10
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY application.py application.py
COPY static/ /static/
COPY templates/ /templates/
ENV FLASK_APP=application.py
EXPOSE 5000
CMD flask run
