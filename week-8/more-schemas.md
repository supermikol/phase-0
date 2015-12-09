###One to one
![One to one](https://github.com/supermikol/phase-0/tree/master/week-8/imgs/one-to-one.png "One to one")
This relationship is a one-to-one relationship because there is only one meal associated with one lunch id, and only one lunch id is associated per each meal id.

###Many to many
![Many to many](https://github.com/supermikol/phase-0/tree/master/week-8/imgs/many-to-many.png "Many to many")

###Grocery List
![Grocery list](https://github.com/supermikol/phase-0/tree/master/week-8/imgs/grocery-list.png "Grocery list")

###What is a one-to-one database?
A one-to-one database is where two tables contains unique ids that only cross reference each other exactly one. For example, if we have a table of countries and capitals, each capital belongs to one country, and each country can only have one capital.
###When would you use a one-to-one database? (Think generally, not in terms of the example you created).
I use a one-to-one datase when there are possibly optional/minute details related to a specific value that I may not want to include in my main table. This clears things up so that my general table is easy to navigate, and then if there is specific information regarding a specific item, I can navigate to that item's table to explore the information.
###What is a many-to-many database?
A many to many database is where IDs from two tables will cross reference each other multiple times. For instance, I may have a list of restaurant names that belong to a list of malls. Each mall will contain multiple restaurants from the list, and each restaurant from the list will also belong to multiple malls. This type of database requires a join-table in between to manage all the information.
###When would you use a many-to-many database? (Think generally, not in terms of the example you created).
I would use it where there are two tables of information that need to be cross referenced against each other, where values from both tables will refer to each other multiple times.
###What is confusing about database schemas? What makes sense?
The tough part is understanding how the join tables work. It looks simple in the schema, but I'm not sure how it looks and works in application.