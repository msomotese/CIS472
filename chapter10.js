//Use chapter10 db
use chapter10

//1 - Display the contents of the restaurants collection in pretty form to become familiar with the database. Then comment out this line once you have reviewed the data so that it does not run with the other tasks.
//db.restaurants.find().pretty();
//2 - Insert a document (aka record) with these fields: name, borough, specialty, and cuisine. Please note that specialty is a unique field that does not currently exist in the database. 
db.restaurants.insertOne({ "_id" : ObjectId ("6724493d2ad921e1ef5204d6") , "name":"Ici's Cuisine", "borough" : "Queens", "specialty" : "Pepper Soup", "cuisine":"Nigerian"});  
//3 - Find all the bakeries in Staten Island displaying only their name and cuisine in pretty form
db.restaurants.find({"borough" : "Staten Island", "cuisine" : "Bakery"}, {"cusine":1, "name": 1}).pretty();
//4 - Count all the restaurants in the Bronx via a case-insensitive regular expression containing the word bakery in the name
db.restaurants.count({"borough":"Bronx", name: { $regex: /bakery/i }});
//5 - Count all the restaurants who achieved a score greater than 90
db.restaurants.count({grades: { $elemMatch: {"score":{$gt : 90}}}});
//6 - Count all the restaurants in Brooklyn that prepare either American or Chinese dishes
db.restaurants.count({borough: "Brooklyn", cuisine: { $in: ["American", "Chinese"] }});
