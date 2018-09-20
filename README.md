# amazon-test
This test ensures that the user can search for a product in amazon, select the product and add it to the shopping cart. It opens the shopping cart and validates than there is 1 product and that the name of that product is the expected one.

## Installation
- Clone the repository
- Ensure that you have ruby installed (done and tested with ruby 2.4.1)
- Install bundler. You can use the following command to install it:
```bash
~ $ gem install bundler
```
- After installing bundler, execute the following command inside amazon-test folder (this will install all the dependencies based on the Gemfile)
```bash
~ $ bundle install
```

## Usage
- Execute the following command inside amazon-test folder in order to launch the test.
```bash
~ $ cucumber features/shopping_cart.feature
```

## Test Structure and patterns used
This test has been developed using BDD (Cucumber).
There is only one feature (shopping_cart.feature) including an scenario for the specific test.

I've used page object pattern in order to group all the actions by page (pages folder). Also, the locator strings have been put together at the beggining of the page files in order to make easier to change their values if needed.

The step definitions are placed inside step_definitions folder. There is a file (generic_steps.rb) containing all of them.

The driver management has been also isolated in separated file (browser.rb), including the initialization and closing. Currently only implemented the initizalization for firefox but it could be easily extended for other browsers.

The amazon URL has been put as a constant inside a config file (environment.rb) where I'd group all the configuration data.
