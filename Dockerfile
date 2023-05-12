#FROM python:3.11-slim
#ENV PYTHONUNBUFFERED True
#ENV APP_HOME /app
#WORKDIR $APP_HOME

#COPY requirements.txt requirements.txt
#RUN pip install --no-cache-dir -r requirements.txt

#COPY . ./

#CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app

FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
