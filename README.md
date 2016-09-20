# UPDATE

This app is very out of date and is no longer online. It used an old version of Rails and a limited data set. A newer, completely rewritten version of the app with better data sources is now running on Node/Backbone.js at http://ranndy.com but it not yet open-source.

I am leaving this repository online because the cleaned up census.gov CSV files I used may still be useful to someone, somewhere.

# Random Name Generator

This rails app is intended to function as a random name generator. It pulls in a combination of [1990][] and [2000][] US Census data using publicly available files and then generate names to the user's specifications.

Options include filtering names by:

* Male vs. Female
* Common vs. Rare
* Frequency within different racial/cultural groups (White, Black, Asian Pacific Islander, Native American, Hispanic)

[1990]:http://www.census.gov/genealogy/www/data/1990surnames/names_files.html
[2000]:http://www.census.gov/genealogy/www/data/2000surnames/index.html

## Heroku Version

A [hosted version of the site](http://random-name-generator.herokuapp.com) is available on Heroku, using JustOneDB for the database.

## Creating the Database

Because the source data was inconsistently formatted, I converted the original census data files into clean csv files. The new files can be found in the public folder. 

These files can be imported using rake tasks (see csv_import.rake). Due to the large size of the Surname csv file (155,000 rows), the import takes a very long time.
