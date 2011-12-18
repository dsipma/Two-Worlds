#!/bin/bash
git push origin master
git push heroku master
heroku rake db:migrate
heroku open
