
# Rails-Tracker-it

> Rails-Tracker-it its a rails API application. It was created as the backend for a React-Redux application for the final project of Microverse.

## Location React-Redux application:
- [TRACKER-IT-PAWN](https://tracker-it-pawn.herokuapp.com/)

## Built With

- Ruby v3.0.1
- Ruby on Rails ~> 6.1.3
- Rubocop
- Rspec
- Database Cleaner
- Factory Bot
- Shoulda Matcher
- Apipie

## Documentation

- [Documentation](https://media.giphy.com/media/cVGrkdyh6Y4IAOLotr/giphy.gif)

- For the documentation you can visit

- ## [Rails-Tracker-It Documentation](https://tracker-tracker-api-fp.herokuapp.com/apipie)




## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/downloads/)
- [Rails](http://railsinstaller.org/en)
- [Postgres](https://www.postgresql.org/download/)

### Setup

- Open the terminal where you want to clone this project and paste.

```
    git@github.com:ricardomonte/rails-tracker-api.git
```

- Access the folder cloned.

```
    cd rails-tracker-ip
```

- Install gems with:

```
    bundle install
```

Setup database with:

- First open the folder config. Then opne with your favorite editor the file database.yml there replace:


```
  <!-- replace -->
    username: clow
  <!-- for -->
    username: postgres
```
- Save de changes

- And then:

```
Open the terminal in folder where is allocated the repository

    $sudo -u postgres psql
    ALTER USER postgres WITH ENCRYPTED PASSWORD 123456;
    
    * important to dont forget the semicolons

- Then run in terminal:

```
    rails db:create
    rails db:migrate
    rails db:seed
```

If you receive an error message 'PG::ConnectionBad: FATAL:  password authentication failed for user "postgres"' please follow this instructions

- Open the repository

    - Open the file database.yml
    - Coment out in development the username.
    - Change the pasword for your own password

- Then run in terminal:

    rails db:create
    rails db:migrate
    rails db:seed
```

### Usage

- Start server with:

```
    rails s
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rspec --format documentation
```

## Authors

👤 **Ricardo Montenegro**

- Github: [@ricardomonte](https://github.com/ricardomonte)
- Twitter: [@ramnkco](https://twitter.com/ramnkco)
- LinkedIn: [Ricardo Montenegro](https://www.linkedin.com/in/ricantomontenegro/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!
Feel free to check the issues page.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/).

## 📝 License

This project is [MIT licensed](LICENSE).

![](https://img.shields.io/badge/Microverse-blueviolet)
