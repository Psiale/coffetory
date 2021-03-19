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
