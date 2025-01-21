from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import os

app=Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = os.getenv("DATABASE_URL")
db = SQLAlchemy(app)


with app.app_context():
    db.create_all()

@app.route("/")
def test():
    return ("This is the flask webserver frontend")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
    
    