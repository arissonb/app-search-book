<h1 align="center">

[Zygo Tecnologia](https://github.com/zygotecnologia)
    
</h1>

<p align="center">
  <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/arissonb/app-search-book">
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/arissonb/app-search-book">

<h3 align="center">
 This application was made for Zygo Programming Ruby on Rails challenge.
</h3>


---

## Purpose of the application
Basically, this application allows ordinary users to search for books and authors' names on the system's home screen. Therefore, for users who are administrators in addition to the search on the home page, they can create, edit, delete and disable the books of their choice

## Prerequisites

Have the following features with their respective versions installed on the machine:

- Ruby `3.0.0` - You can use [RBENV](https://github.com/rbenv/rbenv)
- PostgreSQL 13.1-1.pgdg100+1
  - OSX - `$ brew install postgresql` or install [Postgres.app](http://postgresapp.com/)
  - Linux - `$ sudo apt-get install postgresql`
  - Windows - [PostgreSQL for Windows](http://www.postgresql.org/download/windows/)
- Rails `6.1.3.2`
- Bundler `2.2.14`
- Yarn `1.22.5`
- Npm `6.14.8`
- Boostrap `5.0.0-beta3`
- Jquery `3.6.0`


## Most used gem
- gem devise - User authentication 
- gem ransack - Search form
- gem pg - Gem for accessing and connecting to PostgreSQL
- gem rspec-rails - Gem for TDD testing

## Setup the project

After you get all the [prerequisites](#prerequisites), simply execute the following commands in sequence:

```bash
1. Install the dependencies above
2. $ git clone  # Clone the project
3. $ cd app-search-book # Go into the project folder
4. $ gem install bundler # Bundler install
5. $ bundle install # Install the gem dependencies
6. $ yarn install --check-files # Install the yarn dependencies
7. $ rails db:create db:migrate db:seed # Database creation, together with tables and data population
8. $ bundle exec rspec # Run the specs to see if everything is working fine
```

## About the system
- After configuring the application, access the `/db/seed.rb` file to obtain the data already saved in the database and respectively the access users

---

Thanks for the opportunity, this was made with &nbsp;by Arissonb [Get in touch!](https://www.linkedin.com/in/arissonb/)
