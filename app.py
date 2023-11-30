import psycopg2
from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

def db_connect():
    # have to change parameters to the configurations for your database
    conn  = psycopg2.connect(database='dbproject', host='localhost', user='postgres', password='password', port='5432')
    return conn

def select_from_db(table_name, where_condition=None, order_by=None, rows=None):
    conn = db_connect()
    cursor = conn.cursor()
    query = [f'SELECT {rows if rows else "*"} FROM {table_name} ']
    if where_condition: query.append(f'WHERE {where_condition} ')
    if order_by: query.append(f'ORDER BY {order_by} ')
    query = ''.join(query)
    cursor.execute(query)
    return cursor.fetchall()

def try_catch_param(param, args):
    try:
        ret = args[param]
    except:
        ret = None
    return ret

@app.route('/')
def index():
    return render_template('index.html')

@app.route("/select")
def select():
    args = request.args
    rows = try_catch_param('rows', args)
    where_cond = try_catch_param('where', args)
    order_by = try_catch_param('order_by', args)
    table_name = try_catch_param('table_names', args)
    if not table_name:
        return "NEED TABLE NAME"
    return select_from_db(table_name, rows=rows, where_condition=where_cond, order_by=order_by)

if __name__ == '__main__':
    app.run(debug=True)