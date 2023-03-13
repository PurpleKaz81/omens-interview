# README

## Table of Contents

- [Purpose](#purpose)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Further Technical Details](#further-technical-details)

### Purpose

This is a simple Rails app created for an interview process with Omens. The idea is to consume an API and display the results in JSON while filtering the array hash through one key-value only.

### Installation

I ran bundle install, used Net::HTTP to consume the api, used json to parse the data, and used the rails server to run the app. If you don't have Net::HTTP and json, install their gems with the following commands:

  ```bash
  gem install nethttp
  gem install json
  ```

### Usage

The app is simple. It consumes the API and displays the results in JSON.

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
