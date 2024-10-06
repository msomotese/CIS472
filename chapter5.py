import mysql.connector

# create a mysql database connection
mydb = mysql.connector.connect(
  host="database",
  user="root",
  database="chapter5"
)

# create cursor
mycursor = mydb.cursor()


# our SQL SELECT query
query = "SELECT * FROM course"


#execute the query, and get data
mycursor.execute(query)

myresult = mycursor.fetchall()


#iterate through
for x in myresult:
  print(x)
  
