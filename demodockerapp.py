from flask import Flask, render_template
from flask_bootstrap import Bootstrap
import socket

app = Flask(__name__)
Bootstrap(app)

@app.route('/')
@app.route('/index')
def index():
    hostname = socket.gethostname()
    return render_template('index.html', hostname=hostname)


if __name__ == '__main__':
    app.run(host='0.0.0.0')
