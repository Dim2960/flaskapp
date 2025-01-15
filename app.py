from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_test():
    return "Hello Test"

if __name__ == '__main__':
    # app.run(debug=True)
    app.run(debug=True, host='0.0.0.0', port=80)