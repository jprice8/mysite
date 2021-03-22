FROM python:3.8-slim

ENV APP_HOME /app
WORKDIR $APP_HOME

# removes output stream buffering, allowing for more efficient logging
ENV PYTHONUNBUFFERED 1

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt 

COPY . .

# test locally
ENV PORT 8080
# Run the web service on container startup. Here we us the gunicorn
# webserver, with one worker process and 8 threads.
# For environments with multiple CPU cores, increase the number of workers
# to be equal to the cores available.
# Timeout is set to 0 to disable the timeouts of the workers to allow Cloud Run to
# handle instance scaling.
CMD exec gunicorn --bind :$PORT --workers 3 mysite.wsgi:application