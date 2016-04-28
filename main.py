from bottle import Bottle, run, static_file

app = Bottle()

@app.route('/')
def hello():
    """Return a friendly HTTP greeting."""
    return 'Hello World!'

@app.route('/v1/<filename:re:.*\.png>')
def show_pic(filename):
    return static_file(filename, root='images/v1/')

run(app, host='0.0.0.0', port=1901, debug=True)
