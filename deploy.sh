echo "Welcome to NomadAnalytics."
echo "This module runs on Ruby on Rails, with a Parse backend hosted on Heroku."
echo "Run this bash script from the directory you want the app to be installed."
echo "Please enter your desired Heroku application name, followed by [ENTER]"
read appname
echo "We will now install the Nomad Analytics application files onto your machine and deploy the application to $appname.heroku.com. This process will take several minutes."
echo

## Checking requirements
echo "Checking requirements..."
echo
pass=1
ruby_v=`ruby -v | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $ruby_v != 1.9.3 ]
	then echo "Error: Ruby 1.9.3 is required. Installing Ruby 1.9.3 ..."
	rvm install 1.9.3
	if [ $ruby_v != 1.9.3 ]
		then echo "Ruby installation failed."
		pass = 0
	else
		echo "Ruby 1.9.3 installation succeeded"
	fi
else
	echo "Ruby version correct."
fi

rvm_v=`rvm -v | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $rvm_v != 1.13.5 ]
	then echo "Error: RVM 1.13.5 is required. Installing RVM 1.13.5 ..."
		curl -L get.rvm.io | bash -s stable
		if [ $rvm_v != 1.13.5 ]
			then echo "RVM installation failed."
			pass=0
		else
			echo "RVM 1.13.5 installation succeeded."
		fi
else
	echo "RVM version correct."
fi

rails_v=`rails -v | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $rails_v != 3.2.3 ]
	then echo "Error: Rails 3.2.3 is required. Installing Rails 3.2.3 ..."
		gem install rails
		if [ $rails_v != 3.2.3 ]
			then echo "Rails installation failed."
			pass=0
		else
			echo "Rails 3.2.3 installation succeeded."
		fi
	else
		echo "Rails version correct."
fi

bundler_v=`bundle -v | sed 's/[^0-9.]*\([0-9.]*\).*/\1/'`
if [ $bundler_v != 1.1.3 ]
	then echo "Error: Bundler 1.1.3 is required. Installing bundler 1.1.3 ..."
		gem install bundler
		if [ $bundler_v != 1.1.3 ]
			then echo "Bundler installation failed."
			pass=0
		else
			echo "Bundler 1.1.3 installation succeeded."
		fi
else
	echo "Bundler version correct."
fi

if [ $pass = 0 ]
	then echo "Please make sure all requirements as outlined by the README are met before proceeding."
	exit
fi

echo
echo "Requirement check completed."
echo
echo "Cloning from github repository..."
git clone git@github.com:chyuan/nomad.git $appname

echo "Installing gems..."

cd $appname

bundle install

echo "Deploying to Heroku..."
heroku apps:destroy $appname --confirm $appname
heroku create $appname	

git push heroku master

echo "Deployment successful."
heroku open