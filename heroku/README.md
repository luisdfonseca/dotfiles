# Heroku

## Setup
Set up first time
``` bash
# setup heroku cli
# https://devcenter.heroku.com/articles/heroku-cli
brew tap heroku/brew && brew install heroku
heroku login

heroku create app-name

# commit changes
git push heroku main

# setup ENV variables
heroku config:set SECRET_KEY="xxxxxxxxxxxx"
heroku config:set FLASK_APP=app.py

heroku config:get VAR_NAME

# setup database
heroku addons:create heroku-postgresql:mini
heroku config:get DATABASE_URL
heroku run flask db upgrade

# open application
heroku open

# check logs
heroku logs --tail
```

how to add changes to production

``` bash
# if it is a new env
heroku login
heroku git:remote -a <your_heroku_app_name>

git add .
git commit -m "changes made"
git push heroku main

# database cahnges
heroku run flask db upgrade

heroku config:set ENV_VAR="xxxxxxxxxxxx"
```