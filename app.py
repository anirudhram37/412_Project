import psycopg2
from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

def db_connect():
    # have to change parameters to the configurations for your database
    conn  = psycopg2.connect(database='ecommerce_db', host='localhost', user='postgres', password='password', port='5432')
    return conn


@app.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)