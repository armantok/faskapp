import flask
app= flask.Flask(__name__)
@app.route("/",methods=['Get'])
def home():
    return"<h1> Demo Flask app<h1>"
if __name__=='__main__':
    app.run(debug=True, host="0.0.0.0")
