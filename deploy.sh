echo "Welcome to NomadAnalytics."
echo "This module runs on Ruby on Rails, with a parse backend hosted on heroku."
echo "Run this bash script from the directory you want the app to be installed."

## Checking requirements
echo "Checking requirements..."
echo
pass=1
ruby_v=`ruby -v | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $ruby_v != 1.9.3 ]
	then echo "Error: Ruby 1.9.3 is required"
	pass=0
else
	echo "Ruby version correct."
fi

rvm_v=`rvm -v | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $rvm_v != 1.11.6 ]
	then echo "Error: RVM 1.11.6 is required"
		pass=0
else
	echo "RVM version correct."
fi

rails_v=`rails -v | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $rails_v != 3.2.3 ]
	then echo "Error: Rails 3.2.3 is required"
		pass=0
	else
		echo "Rails version correct."
fi

bundler_v=`bundle -v | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $bundler_v != 1.1.3 ]
	then echo "Error: Bundler 1.1.3 is required"
		pass=0
else
	echo "Bundler version correct."
fi

git_v=`git --version | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $git_v != 1.7.4.4 ]
	then echo "Error: Git 1.7.4.4 is required"
		pass=0
else echo "Git version correct."
fi

heroku_v=`heroku -v | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $heroku_v != 2.24.0 ]
	then echo "Error: Heroku 2.24.0 is required"
		pass=0
else echo "Heroku version correct."
fi

if [ $pass = 0 ]
	then echo "Please make sure all requirements as outlined by the README are met before proceeding."
	exit
fi

echo
echo "Requirement check completed."
echo
echo "Cloning from github repository..."
appname = nomadanalytics
git clone git@github.com:chyuan/nomad.git $appname

echo "Installing gems..."
cd $appname

bundle install

echo "Deploying to heroku..."
heroku apps:destroy $appname --confirm $appname
heroku create $appname	

git push heroku master

echo "Succeeded."
heroku open