from flask import *

app=Flask(__name__)

@app.route('/')
def home():
    """home page"""
    return "Hello world, how are you"

@app.route('/2')
def home2():
    """home page2"""
    return "Hello world, second page"

@app.route('/3')
def home3():
    """home page3"""
    data={"a":10, "b":20}
    return jsonify(data)

if __name__=="__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)