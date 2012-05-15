echo "Welcome to NomadAnalytics."
echo "This module runs on Ruby on Rails, with a parse backend hosted on heroku."
echo "Run this bash script from the directory you want the app to be installed."

git clone git@github.com:chyuan/nomad.git nomadanalytics

cd nomadanalytics

bundle install

heroku create nomadanalytics	

git push heroku master

heroku open