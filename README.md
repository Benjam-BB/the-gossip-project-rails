# README

## THE GOSSIP PROJECT

Made for Ruby 2.5.1 Rails 5.2.3

PRESENTATION

The Gossip Project gathers the best gossips ever heard in THP. This the v2, you'll soon be able to comment and like the gossips.

Some alert about what you're doing and created/destroying things might not work.

SET-UP
```
$ git clone https://github.com/Benjam-BB/the-gossip-project-rails
```

Go to the folder and run 
```
$ bundle install
```
> **Watch out** : check that none database on your computer has the same name than mine. If this is the case go to config > database.yml and change the names of each database.

Initialize the database, active the migrations and run the seed :
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```
RUNNING

Launch your server :

```
$ shotgun -p 3000
```


Open a browser and go to : http://localhost:3000/welcome
or http://localhost:3000/welcome/your_name for a personalized landing page

Navigate and envoy the Gossips

If you want to contact me, my details are in the contact page.
