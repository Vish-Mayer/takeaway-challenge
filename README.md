Takeaway Challenge
==================
```
                            _________
              r==           |       |
           _  //            |  M.A. |   ))))
          |_)//(''''':      |       |
            //  \_____:_____.-------D     )))))
           //   | ===  |   /        \
       .:'//.   \ \=|   \ /  .:'':./    )))))
      :' // ':   \ \ ''..'--:'-.. ':
      '. '' .'    \:.....:--'.-'' .'
       ':..:'                ':..:'

 ```

First 3 user stories completed. 
Note: I am aiming for better coverage in my tests and will not proceed to the final user story until this is achieved.


How to use:
===========

```
2.6.5 :001 > require './lib/takeaway.rb'
 => true 
2.6.5 :002 > a = Takeaway.new
 => #<Takeaway:0x00007fa00a026460 @menu=#<Menu:0x00007fa00a0263c0 @dishes=[{:large_pizza=>10.99}, {:medium_pizza=>7.99}, {:garlic_dip=>0.25}, {:large_softdrink=>1.9}, {:medium_softdrink=>1
.2}]>, @basket=#<Basket:0x00007fa00a0249a8 @order={}, @total=0>> 
2.6.5 :003 > a.view_menu
1. Large Pizza                £10.99
2. Medium Pizza               £7.99
3. Garlic Dip                 £0.25
4. Large Softdrink            £1.90
5. Medium Softdrink           £1.20
 => [{:large_pizza=>10.99}, {:medium_pizza=>7.99}, {:garlic_dip=>0.25}, {:large_softdrink=>1.9}, {:medium_softdrink=>1.2}] 
2.6.5 :004 > a.add_to_basket
Medium Pizza
 => "medium_pizza added to basket" 
2.6.5 :005 > a.add_to_basket
Garlic Dip
 => "garlic_dip added to basket" 
2.6.5 :006 > a.add_to_basket
Medium Softdrink
 => "medium_softdrink added to basket" 
2.6.5 :007 > a.view_basket
Medium Pizza                  £7.99
Garlic Dip                    £0.25
Medium Softdrink              £1.20
 
Total amount                  £25.67
 => nil 
2.6.5 :008 >
``` 

```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```
