from flask import Flask, Response


app = Flask(__name__)


@app.route("/")
def hello():
    return Response("Hi from your Flask app running in your Docker container!")