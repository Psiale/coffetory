### Raw Materials API

> Keep track of your raw materials

## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Setup](#setup)
* [Author](#author)
* [Show your Support](#show-your-support)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project


This repository holds the Ruby on Rails API from which the React frontend serves the data.

It is a simple Rails app that has three models - Owner and raw materials

For the authentication of the users I used JSON Web Tokens.
Inspiration from [this](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one) article series.

The API is hosted on Heroku, at this endpoint: [Coffetory API](https://coffetory-api.herokuapp.com/business) - But they can only be accessed with a valid API token
  * From there several other endpoints can be accessed
  - `/auth/login`
    - POST - for user sign in
  - `/signup`
    - POST - for user sign up
  - `/business` 
    - GET - for fetching the business
  - `business`
    - POST for creating a business
  - `/business/:id/raw_materials` 
    - GET - for fetching raw materials belonging to that business
- `/business/:id/raw_materials` 
    - POST - for createing raw materials belonging to that business
- `/business/:id/raw_materials/:id`
    - PUT - for updating the raw material


### Built With

*   Ruby on Rails
*   PostgreSQL
*   Rubocop

## Setup

```
git clone https://github.com/Psiale/coffetory.git
```
### Install dependencies

```
bundle install
```

### Start Development Server

```
rails s
```
### Visit this link in your browser
```
http://localhost:3000/
```

### Run Rubocop

```
rubocop
```

### Run tests

```
bundle exec rspec
```

<!-- CONTACT -->
## Author

- Personal website: [ermin.dev](https://ermin.dev)
- Github: [@ermin-cahtarevic](https://github.com/ermin-cahtarevic)
- Twitter: [@ErminCahtarevic](https://twitter.com/ErminCahtarevic)
- Linkedin: [Ermin Cahtarevic](https://www.linkedin.com/in/ermincahtarevic/)

<!-- ABOUT THE PROJECT-->
## 🤟🏽😄 😛🤙🏾  Creator

Alexis Sanchez - [Github](https://github.com/Psiale)

## 🙌🏾 Show Your Support

Give a ⭐️ if you like this project!

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Microverse](https://www.microverse.org/)
* [Article series used for inspiration](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one)
