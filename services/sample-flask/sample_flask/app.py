from flask import Flask, escape, request

app = Flask(__name__)

@app.route('/')
def hello():
    name = request.args.get("name", "Flask")
    return f'Hello, {escape(name)}!'

def main():
    app.run('0.0.0.0')
