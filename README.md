# SMS Notification Rails App

Welcome to the SMS Notification Rails App! This application is designed to send SMS messages to users after they sign up. This README will guide you through setting up and using the application.

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)

## Getting Started

These instructions will help you get a copy of the project up and running on your local machine for development and testing purposes.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- Ruby (version 2.7 or higher)
- Rails (version 6.0 or higher)
- Bundler
- A Twilio account (or another SMS service provider)

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/sms-notification-rails-app.git
    cd sms-notification-rails-app
    ```

2. Install the necessary gems:

    ```bash
    bundle install
    ```

3. Set up the database:

    ```bash
    rails db:create
    rails db:migrate
    ```

## Configuration

1. Create a `.env` file in the root directory of the project and add your Twilio credentials:

    ```plaintext
    TWILIO_ACCOUNT_SID=your_account_sid
    TWILIO_AUTH_TOKEN=your_auth_token
    TWILIO_PHONE_NUMBER=your_twilio_phone_number
    ```

## Usage

1. Start the Rails server:

    ```bash
    rails server
    ```

2. Open your browser and navigate to `http://localhost:3000`.

3. Sign up as a new user. After signing up, you should receive an SMS message confirming your registration.


