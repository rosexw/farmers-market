# Market+

## Made by

Meagan Blais - https://github.com/MeaganBlais
Katia Al-Amir - https://github.com/kamir222
Rose Wan - https://github.com/rosexw
Vasiliy Klimkin - https://github.com/vasiliy-klimkin

# Description

Currently, if you want to find information about local farmer’s markets there are only a couple blogs which provide limited information about these markets.

Since these blog postings are static by nature we recognized that consumers are not able to easily access accurate information about what each market offers.

We felt that this was a problem, who doesn’t want to have easy access to fresh, local food!

Based on this, we created a platform which allows farmers to create a profile that contains current information about the products they carry and the markets where they will be selling.
On the user side, an individual can keep track of their favorite markets & farmers.

## Dependencies

- ruby  2.3.0
- rails 5.0.4
- postgres database

## How to Run

- Clone the repo
- cd into the directory that you just cloned
- run ```bundle install``` to get all the necessary gems
- turn on postgress
- run ``` rake db:setup ``` to create database
- run ``` rake db:migrate ``` to create the tables in the database
- run ``` rake db:seed ``` to get the initial seeds
- (optional) go into postgres and verify if all the tables exist
- run the server with ``` bin/rails server ``` or ``` bin/rails s```

## Features

 - Dashboard is made out of react components
 - Site is mobile friendly (Responsive design: Open dev tools in chrome and click the phone icon to see how it behaves when the screen is smaller)

## Used Case

### As a Anon-user
  - can search by products to find markets that sell the product searched
  - can search by market name to find market with simular name in database
  - can search by location, which shows farms in a 1 mile radius from the place that has been searched

### As a farmer
  - can add/delete products
  - can add/delete marketes they want to participate at
  - can view markets they are participating at

### As a registered user
  - can check favorite markets/farmers

  ## Screenshots

  -![1](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/1.png?raw=true)
  -![2](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/2.png?raw=true)
  -![3](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/3.png?raw=true)
  -![4](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/4.png?raw=true)
  -![5](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/5.png?raw=true)
  -![6](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/6.png?raw=true)
  -![7](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/7.png?raw=true)
  -![8](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/8.png?raw=true)
  -![9](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/9.png?raw=true)
  -![10](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/10.png?raw=true)
  ## Responsive Design
  -![11](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/11-responsive.png?raw=true)
  -![12](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/12-responsive.png?raw=true)
  -![13](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/13-responsive.png?raw=true)
  -![14](https://github.com/rosexw/farmers-market/blob/master/farmers-market/docs/14-responsive.png?raw=true)