Feature: Checkout
  In order to evaluate correct behaviour of checkout
  As a normal user
  I want to be able to test every possible checkout

Background:
  Given a tons of products exists
  Given a logged valid user
  Given promotions are set for the right products
  Given an empty cart


Scenario: First Case
  When I add "1" of "Orange" to the cart
  And I add "1" of "Bread" to the cart
  And I add "1" of "Milk" to the cart 
  When I go to the home page
  And I follow "Current Cart (3)"
  And I follow "Checkout"
  Then I should see "£2.19"


Scenario: Second Case
  When I add "1" of "Orange" to the cart
  And I add "1" of "Orange" to the cart
  And I add "1" of "Orange" to the cart
  And I add "1" of "Milk" to the cart
  When I go to the home page
  And I follow "Current Cart (4)"
  And I follow "Checkout"
  Then I should see "£1.48"


Scenario: Third Case
  When I add "1" of "Bread" to the cart
  And I add "1" of "Milk" to the cart
  When I go to the home page
  And I follow "Current Cart (2)"
  And I follow "Checkout"
  Then I should see "£1.9"

Scenario: Fourth Case
  When I add "1" of "Shower Gel" to the cart
  And I add "1" of "Shower Gel" to the cart
  And I add "1" of "Orange" to the cart
  And I add "1" of "Orange" to the cart
  And I add "1" of "Orange" to the cart
  When I go to the home page
  And I follow "Current Cart (5)"
  And I follow "Checkout"
  Then I should see "£2.58"










  
