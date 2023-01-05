<!--
Hey, thanks for using the awesome-readme-template template.  
If you have any enhancements, then fork this project and create a pull request 
or just open an issue with the label "enhancement".

Don't forget to give this project a star for additional support ;)
Maybe you can mention me or this repo in the acknowledgements too
-->
<div align="center">

  <!-- <div align="center"> 
    <img src="./app/assets/images/" alt="The logo for the service."  width="448" height="354" />
  </div> -->

  <h1>Tea Service</h1>
  
  <p>
    A Rails API for a FE Tea Subscription Service.
  </p>
  
  
<!-- Badges -->
<!-- <p>
  <a href="https://github.com/Louis3797/awesome-readme-template/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/Louis3797/awesome-readme-template" alt="contributors" />
  </a>
  <a href="">
    <img src="https://img.shields.io/github/last-commit/Louis3797/awesome-readme-template" alt="last update" />
  </a>
  <a href="https://github.com/Louis3797/awesome-readme-template/network/members">
    <img src="https://img.shields.io/github/forks/Louis3797/awesome-readme-template" alt="forks" />
  </a>
  <a href="https://github.com/Louis3797/awesome-readme-template/stargazers">
    <img src="https://img.shields.io/github/stars/Louis3797/awesome-readme-template" alt="stars" />
  </a>
  <a href="https://github.com/Louis3797/awesome-readme-template/issues/">
    <img src="https://img.shields.io/github/issues/Louis3797/awesome-readme-template" alt="open issues" />
  </a>
  <a href="https://github.com/Louis3797/awesome-readme-template/blob/master/LICENSE">
    <img src="https://img.shields.io/github/license/Louis3797/awesome-readme-template.svg" alt="license" />
  </a>
</p> -->
   
<!-- <h4>
    <a href="https://github.com/Louis3797/awesome-readme-template/">View Demo</a>
  <span> · </span>
    <a href="https://github.com/Louis3797/awesome-readme-template">Documentation</a>
  <span> · </span>
    <a href="https://github.com/Louis3797/awesome-readme-template/issues/">Report Bug</a>
  <span> · </span>
    <a href="https://github.com/Louis3797/awesome-readme-template/issues/">Request Feature</a>
  </h4> -->
</div>

<br />

<!-- Table of Contents -->
# :notebook_with_decorative_cover: Table of Contents

- [About the Project](#star2-about-the-project)
  * [Screenshots](#camera-screenshots)
  * [Tech Stack](#space_invader-tech-stack)
  * [Features](#dart-features)
  * [Environment Variables](#key-endpoints)
- [Getting Started](#toolbox-getting-started)
  * [Prerequisites](#bangbang-prerequisites)
  * [Installation](#gear-installation)
  * [Running Tests](#test_tube-running-tests)
  * [Run Locally](#running-run-locally)
  * [Deployment](#triangular_flag_on_post-deployment)
- [Usage](#eyes-usage)
- [Roadmap](#compass-roadmap)
- [Stetch Goals](#smirk-stretch-goals)
- [Contributing](#wave-contributing)
- [FAQ](#grey_question-faq)
- [Contact](#handshake-contact)
- [Acknowledgements](#gem-acknowledgements)

  

<!-- About the Project -->
## :star2: About the Project
This API was created as a project for Turing School of Software and Design's curriculum, to demonstrate student's proficiency in Rails, with the ability to create restful routes, as well as using well-organized code, following OOP and Test Driven Development.
<!-- Screenshots -->
### :camera: Screenshots

<div align="center"> 
  <img src="./app/assets/images/schema.png" alt="The schema of the project includes 3 tables."  width="774" height="330" />
</div>


<!-- TechStack -->
### :space_invader: Tech Stack

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>

<!-- <details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://www.typescriptlang.org/">Typescript</a></li>
  </ul>
</details> -->

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- <details>
<summary>DevOps</summary>
  <ul>
    <li><a href="https://circleci.com/">CircleCLI</a></li>
  </ul>
</details> -->

<!-- Features -->
### :dart: Features

Create and cancel tea subscriptions for a customer, and view all (active and cancelled) subscriptions for one customer.

<!-- Env Variables -->
### :key: Endpoints

Here are the endpoints for this project:

 - Customer Subscription creation. Associates a customer_id with an subscription_id
 ```bash
  post "/api/v1/subscriptions"
 ```

 <!-- - Customer Subscription update. Can update the status of the customer subscription
 ```bash
  patch "/api/v1/subscriptions"
 ``` -->

 - Customer Subscription Index. The associated customer lists all their subscriptions
 ```bash
  get "/subscriptions/:id"
 ```

  - Customer Subscription Destroy. The associated customer detroys all their subscription
 ```bash
  delete "/subscriptions/:id"
 ```


<!-- Getting Started -->
## 	:toolbox: Getting Started

<!-- Prerequisites -->
### :bangbang: Prerequisites

This project uses `Rails 5.2.8.1` and `Ruby 2.7.2`
   
<!-- Running Tests -->
### :test_tube: Running Tests

To run tests, run the following command

```bash
  bundle exec rspec spec
```

<!-- Run Locally -->
### :running: Run Locally

Clone the project

```bash
  git clone https://github.com/torlemann/tea_service.git
```

Go to the project directory

```bash
  cd tea_service
```

Start the server

```bash
  rails s
```


<!-- Deployment -->
### :triangular_flag_on_post: Deployment

To deploy this project open

```bash
  localhost:3000
```


<!-- Usage -->
<!-- ## :eyes: Usage

 -->


<!-- Roadmap -->
<!-- ## :compass: Roadmap

* [ ] -->

## :smirk: Stretch Goals

<!-- * [ ] 
 -->

<!-- Contributing -->
<!-- ## :wave: Contributing

<a href="https://github.com/Louis3797/awesome-readme-template/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Louis3797/awesome-readme-template" />
</a>


Contributions are always welcome!

See `contributing.md` for ways to get started. -->


<!-- FAQ -->
<!-- ## :grey_question: FAQ

- Question 1

  + Answer 1

- Question 2

  + Answer 2
 -->


<!-- Contact -->
## :handshake: Contact

Taryn Orlemann - [LinkedIn](https://www.linkedin.com/in/taryn-orlemann-99792519a/)

Project Link: [https://github.com/torlemann/tea_service](https://github.com/torlemann/tea_service)


<!-- Acknowledgments -->
## :gem: Acknowledgements

Round of applause for the resources I was able to use in this project
 - [DB Diagram](https://www.dbdiagram.io/)
 - [Awesome README](https://github.com/matiassingers/awesome-readme)
 - [Emoji Cheat Sheet](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md#travel--places)
 <!-- - [Logo](https://forums.wynncraft.com/threads/%E2%98%95-jasmine-dragon-leaf-combat-requirement-lv60-community-war-lore-discord-lv-76.293650/) -->
