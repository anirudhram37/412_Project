import psycopg2
import json
from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

def db_connect():
    # have to change parameters to the configurations for your database
    conn  = psycopg2.connect(database='dbproject', host='localhost', user='postgres', password='password', port='5432')
    return conn

def get_columns(table_name):
    conn = db_connect()
    cursor = conn.cursor()
    cursor.execute(f"SELECT column_name FROM information_schema.columns WHERE table_name = '{table_name}'")
    return [row[0] for row in cursor.fetchall()]

def select_from_db(table_name, where_condition=None, order_by=None, rows=None):
    conn = db_connect()
    cursor = conn.cursor()
    query = [f'SELECT {rows if rows else "*"} FROM {table_name} ']
    if where_condition:
        query.append(f'WHERE {where_condition} ')
    if order_by:
        query.append(f'ORDER BY {order_by} ')
    query = ''.join(query)
    cursor.execute(query)
    return json.dumps(cursor.fetchall())

def insert_into_db(table_name, values):
    conn = db_connect()
    cursor = conn.cursor()

    cols = ', '.join(values.keys())
    params = ', '.join(['%s'] * len(values))
    query = f'INSERT INTO {table_name} ({cols}) VALUES ({params})'

    try:
        cursor.execute(query, list(values.values()))
        conn.commit()
        return "Row added successfully"
    except Exception as e:
        conn.rollback()
        return f"Error adding row: {str(e)}"

def try_catch_param(param, args):
    try:
        ret = args[param]
    except:
        ret = None
    return ret

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/reviews')
def reviews():
    return render_template('review.html')

@app.route('/orders')
def orders():
    return render_template('review.html')
@app.route('/suppliers')
def suppliers():
    return render_template('review.html')
@app.route('/users')
def users():
    return render_template('review.html')

@app.route('/select/<table_name>')
def select(table_name):
    args = request.args
    rows = try_catch_param('rows', args)
    where_cond = try_catch_param('where', args)
    order_by = try_catch_param('order_by', args)

    return str(select_from_db(table_name, rows=rows, where_condition=where_cond, order_by=order_by))

@app.route('/insert/<table_name>', methods=['GET', 'POST'])
def insert(table_name):
    if request.method == 'POST':
        args = request.form
        values = {key: try_catch_param(key, args) for key in request.form.keys()}

        if not all(values.values()):
            return "All fields are required"

        return insert_into_db(table_name, values)

    columns = get_columns(table_name)
    return render_template('insert.html', table_name=table_name, columns=columns)

if __name__ == '__main__':
    app.run(debug=True)