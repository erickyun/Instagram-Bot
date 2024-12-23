from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    # Running the app without binding to an external port (localhost only)
    app.run(host='0.0.0.0', port=5000, debug=True, use_reloader=False)
    
