# README

## Table of Contents

- [Purpose](#purpose)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Further Technical Details](#further-technical-details)

### Purpose

This is a simple Rails app created for an interview process with Omens.

### Installation

I ran bundle install, used Net::HTTP to consume the api, used json to parse the data, and used the rails server to run the app. If you don't have Net::HTTP and json, install their gems with the following commands:

  ```bash
  gem install nethttp
  gem install json
  ```

### Usage

The app is simple. It consumes an API and displays the results in JSON while filtering the array hash through four keys only. The page loads in localhost:3000 immediately filtering for type: "phyto", but can also be filtered for type: "course". If the query remains empty, the app will display all the results for the four keys.

### Contributing

Since this is an interview process, I will not be accepting any contributions that don't come from the interviewers.

### License

[MIT](https://choosealicense.com/licenses/mit/)

### Further Technical Details

- Ruby version: 3.1.2p20
- Rails version: 7.0.4.2
- Database: SQLite3
- Dependencies: Net::HTTP, json
- Deployment instructions: rails server
