from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'rband709'


if __name__ == "__main__":
    app.run()
