# Who Is Hungry

Hi *Folks* !

Welcome on the **WhoIsHungry** repository. Here you will have a quick explanation of what you need to do to launch the project and a few rules you need to follow working on the project

Have fun :smile:


##Requirements

* Ruby
* Rails
* Git
* PostgreSQL

## Installation

If you don't have one of the requirements, please check how to install it. Don't hesitate to ask questions, others already installed everything fine, sometimes there is some :poop: but you know... But as usual

###Ruby, Rails & Git

If you need to install the three or just some of the three, please refer to the tuto [here](http://ruby.railstutorial.org/ruby-on-rails-tutorial-book#top). Also please check you have the last version of them :)

###PostgreSQL

####MAC OS X

Install PostgreSQL on your mac :

    brew update
    brew install postgresql

Initialise the database and start Postgres : 

    initdb /usr/local/var/postgres -E utf8
    pg_ctl -D /usr/local/var/postgres -l logfile start

Create a default user for postgres :

    createuser -s -r postgres

#### LINUX (Ubuntu)

Visit [Postgres Ubuntu Doc Page](http://doc.ubuntu-fr.org/postgresql)
Install [PGAdmin3 (GUI)](http://www.postgresql.org/ftp/pgadmin3/release/v1.18.1/src/)

## Configuration
[Fork](https://help.github.com/articles/fork-a-repo) me

Clone your git repo. Execute the following lines:

    git clone <your_forked_repo_url>
    cd whoishungry

Set `config/database.yml`, `.env` and `config/application.yml` files. (ask the team)

Set your `/etc/hosts` to work with subdomains:

    sudo vim /etc/host
    # Append whoishungry.dev  to localhost

##Start Working
First of all, you need to create the database and populate it with a few elements :boy: :girl: :woman: :man:

    bundle exec rake db:initialize

Finally, to start working :

    bundle install
    foreman start
    
    # to see log (in another shell session)
    tail -f log/development.log

    # to open the console in dev mode (in another shell session)
    rails c

Current version is available at [whoishungry.dev](http://ambber.dev:3000)

###Work on Views and CSS
Everything is into the `app/` folder.
  * In the `assets/` subfolder you can find images, CSS and JS files
  * In the `views/` subfolder you can find the sources of the HTML pages. Before to be sent, the pages are preprocessed by Ruby. Commands in Ruby are included with the "<% %>" syntax
  
Do not hesitate to ask to others should you have any question about that

## Rules
:beers: at least once in a week !
