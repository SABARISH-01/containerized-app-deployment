# app.py
from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello! This application is running inside a container! 🐳"

if __name__ == "__main__":
    # We run on 0.0.0.0 to make it accessible outside the container
    app.run(host='0.0.0.0', port=5000)
