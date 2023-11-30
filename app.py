import psycopg2
from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

def db_connect():
    # have to change parameters to the configurations for your database
    conn  = psycopg2.connect(database='dbproject', host='localhost', user='postgres', password='password', port='5432')
    return conn

def select_from_db(table_name, where_condition=None, order_by=None, rows="*"):
    conn = db_connect()
    cursor = conn.cursor()
    query = [f'SELECT {rows} FROM {table_name} ']
    if where_condition: query.append(f'WHERE {where_condition} ')
    if order_by: query.append(f'ORDER BY {order_by} ')
    query = ''.join(query)
    cursor.execute(query)
    return cursor.fetchall()



@app.route('/')
def index():
    return render_template('index.html')

@app.route("/connection")
def page():
    return select_from_db("order_info")
if __name__ == '__main__':
    app.run(debug=True)