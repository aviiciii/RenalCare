from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

from flask import Flask, request, jsonify

app = Flask(__name__)


def get_breakfast(uid):
    return "eggs, bacon, and toast"

def get_lunch(uid):
    return "a sandwich"

def get_dinner(uid):
    return "a salad"

routes = {
    "/breakfast": get_breakfast,
    "/lunch": get_lunch,
    "/dinner": get_dinner
}

