Feature: Cart feature
  In order to check if cart adds products correctly
  As a normal user
  I want to see a valid product generation, adding product, checkout and empty the cart

  
Background:
	Given a logged valid user
	Given a tons of products exists
	Given I go to the home page
	


Scenario: Correct Generation of Products
  Then I should see "OR1"
  And I should see "BR1"
  And I should see "MK1"
  And I should see "SG1"
  Then show me the page

Scenario: Add Product to the cart
  When I follow "Orange"
  And I follow "Add to Cart"
  Then I should be on the home page
  And I should see "Current Cart (1)"

Scenario: Empty the cart
  Given I follow "Shower Gel"
  When I follow "Add to Cart"
  Then I should see "Current Cart (1)"
  When I follow "Current Cart (1)"
  And I follow "Empty Cart"
  Then I should see "Current Cart (0)"


