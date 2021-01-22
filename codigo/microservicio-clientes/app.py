from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def metodo1():
    return "OK"

@app.route('/crear')
def metodo2():
    return render_template('crear.html')s

@app.route('/listar')
def metodo3():
    return render_template('listar.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0')

