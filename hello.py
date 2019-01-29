from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def index():
    return "Index Page"

@app.route("/login")
def login():
    return render_template('login.html')

@app.route("/hello")
def hello():
    return "Hello World!"

@app.route("/members")
def members():
    return "Members"

@app.route('/abc',  methods=['POST'])
def success():
   if request.method == 'POST':
       email = request.form['email']
       return render_template('success.html', email=email)
   else:
       pass

#@app.route("/members/<string:name>/")
#def getMember(name):
#    return </string:name>

if __name__ == "__main__":
    app.run()