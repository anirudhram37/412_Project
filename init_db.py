import psycopg2

conn  = psycopg2.connect(database='ecommerce_db', host='localhost', user='postgres', password='password', port='5432')
cur = conn.cursor()

cur.execute("INSERT INTO Product Values ( 'B002PD61Z6', 'Macbook Air', 1500, 'Computers', 'https://macbook.jpg', 'https://macbook', 'Apple Macbook Pro', 'China', 4.0599999904632568, 9000);")

conn.commit()
cur.close()
conn.close()




