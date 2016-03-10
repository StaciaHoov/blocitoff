# Blocitoff

## Summary
Blocitoff is a self-destructing To-Do list application created on Ruby on Rails. 
I made it with the help of a mentor through the Bloc FullStack Web Development Apprenticeship.  

## Features
Users can - 
* sign up for a free account and view their profile page.
* create multiple TO-DO items, then mark them as completed and have them deleted without page reload.
* can view how many days remain before a to-do item expires.
Expired to-do items (older than 7 days) are automatically deleted using a custom rake tasks.


## Technologies
Languages, Libraries, and Frameworks:     
* Ruby on Rails 4.2.1 
* AJAX
* jQuery
* Bootstrap 

Databases:         
* SQLite (Test, Development)    
* PostgreSQL (Production)   

Development Tools, Gems and Methodologies:   
* Faker for database seeding     
* Figaro to manage sensitive information     
* Devise for user authentication and confirmation 
* SendGrid for email processing

## Deployment
You can view the app on Heroku: [stacia-blocitoff app](https://stacia-blocitoff.herokuapp.com/)