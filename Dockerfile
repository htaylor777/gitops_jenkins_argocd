# this is an official Python runtime, used as the parent image
FROM python:3.6.5-slim

# set the working directory in the container to /app
WORKDIR /app

# add the current directory to the container as /app
ADD . /app

# execute everyone's favorite pip command, pip install -r
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# unblock port 80 for the Flask app to run on
EXPOSE 5429

# execute the Flask app
#CMD ["python", "app.py"]

CMD [ "flask", "run" ]

COPY requirements.txt requirements.txt

COPY . .
