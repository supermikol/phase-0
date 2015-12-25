# Introduction to Databases

#### I worked on this challenge by myself.
#### This challenge took me 2.5 hours.

## SQL Queries

Paste the correct SQL queries for each of the following:

###1. Select all data for all states:
####SELECT * FROM states;
###2. Select all data for the regions:
####SELECT * FROM regions;
###3. Select the `state_name` and `population` for all states:
####SELECT state_name, population FROM states;
###4. Select the `state_name` and `population` for all states ordered by population. The most populous state should be at the top:
####SELECT state_name, population FROM states ORDER BY population DESC;
###5. Select the 'state_name's for the states in region 7:
####SELECT state_name FROM states WHERE region_id = 7;
###6. Select the 'state_names' and 'population_density' with a population density over 50 ordered from least to most dense:
####SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
###7. Select all state_names for states with a population between 1 million and 1.5 million people:
####SELECT state_name FROM states WHERE population < 1500000 AND population > 1000000;
###8. Select all state_names and region_id ordered by region in ascending order:
####SELECT state_name, region_id FROM states ORDER BY region_id ASC;
###9. Select the 'region_name' for the regions with "Central" in the name:
####SELECT region_name FROM regions WHERE region_name LIKE "%central%";
###10. Select all of the region names and the state names in ascending order by regional id:
####SELECT region_name, states.state_name FROM regions JOIN states ON states.region_id = regions.id ORDER BY region_id ASC;

## `persons` and `outfits` Schema
###https://github.com/supermikol/phase-0/blob/master/week-8/database-intro/myschema.png


## Reflection
###What are databases for?
####Databases are used to handle large sets of data that needs to be sorted and manipulated easily.
###What is a one-to-many relationship?
####That means there is a primary key in one table that is referred to multiple times in another. For example, if we have one table of music artists and another table of music albums, the music albums will likely contain the same artists for several albums, and that is the premise behind one (artist) to many (albums) relationship in database management.
###What is a primary key? What is a foreign key? How can you determine which is which?
####A primary key is a unique key that references one unique instance in a table. A foreign key in this case is akin to the table of albums having a foreign key, artist_id, that refers to a 'foreign' key, id, in the table of artists. We can easily determine which is which because a primary key can only show up once in a table (for example, the individual "Michael Jackson" can only show up once on the table of artists), but a foreign key can refer to the same key ('Michael Jackson' on multiple albums) multiple times.
###How can you select information out of a SQL database? What are some general guidelines for that?
####I can select information out of a SQL database by running specific lines of codes starting with the words 'SELECT'. Next I input the specific columns I want to show, and then follow that with 'FROM' and the table name from which I wish to draw these values from. Lastly, I can incorporate various conditions, such as WHERE, or LIKE. One general principle is to capitalize actual code, and downcase references to names of tables, rows, columns, etc..