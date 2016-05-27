# Nexmo Rails 2FA Demo

A demo that implements 2-factor-authentication in Rails
using Device and the [Nexmo Verify API](https://www.nexmo.com/products/verify/).

![Kittens and Co 2FA Flow](docs/kittens.gif)

## Basic Login - basic-login branch

The [basic-login](../../tree/basic-login) branch is the starting point of the
tutorial and is just a simple Rails 4 app Device and Bootstrap to provide a
simple app with a login.

### Usage

* Clone this repository
* Run `git checkout basic-login`
* Run `bundle install`
* Run `rails server`
* Visit http://localhost:3000/
* Register and login

## Two Factor Authentication  - two-factor branch

The [two-factor](../../tree/two-factor) branch is the end point of out tutorial,
adding a `before_filter` two our basic login and verifying a user's identity
using their phone number.

The differences between these two branches can be seen [here](../../compare/basic-login...two-factor)
and in our in-dept tutorial.

### Usage

* Clone this repository
* Run `git checkout two-factor`
* Run `bundle install`
* Copy `.env.example` to `.env` and add your [Nexmo API key and secret](https://dashboard.nexmo.com/settings)
* Run `rails server`
* Visit http://localhost:3000/
* Register and login

## License

This sample is released under the [MIT License][license]

[license]: LICENSE.txt
