# Takeaway Challenge
Under construction

```
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣶⣶⣦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣷⣤⠀⠈⠙⢿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⠏⠀⢀⣠⣤⣤⣀⠙⣿⣿⣿⣿⣿⣷⡀⠀ ⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⡴⢡⣾⣿⣿⣷⠋⠁⣿⣿⣿⣿⣿⣿⣿⠃⠀⡻⣿⣿⣿⣿⡇ ⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⡰⠉⠖⣀⠀⠀⢁⣀⠀⣴⣶⣦⠀⢴⡆⠀⠀⢀⣀⣀⣉⡽⠷⠶⠋⠀ ⠀⠀⠀⠀⠀⠀⠀ ⠀⢀⠔⠁⣿⣿⣿⣿⣿⡟⠀⠀⠀⢀⣄⣀⡞⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⢰⠁⠀⡤⠖⠺⢶⡾⠃⠀⠈⠙⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀ ⠀                         
                                              
```
##### [*OVERVIEW*](#Overview) | [*HOW TO USE*](#How-to-use) | [*DEMO*](#Demo) | [*USER REQUIREMENTS*](#User-Requirements )
___

## Overview

An Object Orientated application challenge to build a command line application that emulates the basic functionality of standard takeaway application. This programme was built using specific user requirements with Ruby and implements a test driven approach and a free REST API provided by Twilio to support the text message function. 

## How to use

Takeaway runs directly from the command line, install either by cloning or forking the repository. Change directory to the root folder and run bundle install.

```
$ bundle install
```

In the root directory, create a new '.env' file
```
$ touch .env
```

Open the .env file and paste in the following

```
ACCOUNT_SID=Your SID
AUTH_TOKEN=Your Auth Token
FROM=Your Twilio client number 
TO=Your personal telephone number 
```
------

Open irb, and enter the following to run the application.

```
$ require './lib/takeaway.rb'
 => true
```
To run the tests for the application, run RSpec.

```
$ rspec
```

## Demo

```
 2.6.5 :004 > a = Takeaway.new
 => #<Takeaway:0x00007fb35f80b118 @menu=#<Menu:0x00007fb35f80b0f0>, @basket=#<Basket:0x00007fb35f80b0c8 @order={}, @total=nil>,

 2.6.5 :005 > a.print_menu
1. Large Pizza 12.99
2. Medium Pizza 7.99
3. Small Pizza 4.99
4. Drink 1.55
 => ["large_pizza 12.99", "medium_pizza 7.99", "small_pizza 4.99", "drink 1.55"]

 2.6.5 :006 > a.add_to_basket("Large Pizza", 3)
  => ["large_pizza 12.99", "medium_pizza 7.99", "small_pizza 4.99", "drink 1.55"]

 2.6.5 :007 > a.add_to_basket("Drink")
  => ["large_pizza 12.99", "medium_pizza 7.99", "small_pizza 4.99", "drink 1.55"]

 2.6.5 :008 > a.view_basket
1. 3x large Pizza 38.97
2. 1x drink 1.55
 => 40.52

 2.6.5 :008 > a.checkout 

```

## User Requirements

---------
```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices
```
```
As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes
```
```
As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order
```
```
As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```
---------
