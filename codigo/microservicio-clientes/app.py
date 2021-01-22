from flask import Flask, render_template
app = Flask(__name__)


@app.route('/crear')
def hello():
    return render_template('crear.html')

@app.route('/listar')
def hello():
    return render_template('listar.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0')

