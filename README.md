# Rais API - Back-end / eMusic Store

In this project, I created a Rails API which is used as a back-end for my eMusic Store project. I have created authentication system for my user model which interacts with the front-end. I have used devise and jwt(JSON Web Tokens) for security purposes. When a user is created or logs in, his/her information are kept in a cookie to the browser. From there, whenever a user refreshes the page he/she doesn't have to log in again and also the cookies stores the information from the front-end site like favorite instruments. Users are saved in the API as profiles. There are 2 types of profile for this API. One is for Guest Users and the 2nd one is for administration purposes. Admin users can only be created from the console of the application for security purposes. Guest users are created from the front end. Guest users need to give their email, username and password when they sign up but whenever they want to login they can use only their username. Each user has its own collection of favourites instruments stored in the API in order for him to be easier to see them while navigating in the front-end side. The back-end part of the application is served through Heroku and below you can also find the link to the front-end repository for more details about it. Since the project is used as an API everything is rendering in JSON format so the link directs to a netlify URL which is the one that the front-end application is served.

# BUILD WITH

- Ruby on Rails
- Devise
- Rack/cors
- Jbuilder
- JWT
- Rubocop
- Postgresql (Heroku database)

# Front-End App
[GitHub Repo](https://github.com/mariosknl/music_store_front-end)

# Live Version
[Live Link](https://emusicstorebymarios.netlify.app/)

# AUTHOR

- Github: [@mariosknl](https://github.com/mariosknl)
- Twitter: [@mariosknl](https://twitter.com/MariosKnl)
- Linkedln: [marios-kanellopoulos](https://www.linkedin.com/in/marios-kanellopoulos)
- Portfolio: [marios-kanellopoulos](https://marioskanellopoulos.com/)

# Show your support

Give ⭐️ if you like this project!

# Acknowledgments

- Microverse
- [Expedito Andrade](https://github.com/expjazz)

### 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the issues page.
