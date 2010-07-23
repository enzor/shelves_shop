Feature: Promotions
  In order to test promotion
  As a admin
  I want to create, edit and destroy promotion and attach it to any product i want

Background:
 Given a logged valid admin
 And I go to the home page


Scenario: Promotion Creation
  When I follow "Promotion"
  And I follow "New Promotion"
  And I fill in "Promotion Name" with "Shower Gel Promotion"
  And I fill in "Brief Description" with "You may pay 2 shower gel with 2£"
  And I select "July 22, 2010, 15:00" as the "End" date and time
  And I fill in "Code" with "SG1"
  And I select "Buy x get 1 free" from "Discount type" 
  And I fill in "Minimum Cart Value for this Promotion (not required)" with "3"
  And I check "Activate"
  And I press "Create"
  Then I should see "Shower Gel Promotion"
  Then show me the page


Scenario: Promotion Editing
  Given a valid promotion
  When I follow "Promotions"
  Then I should see "Shower Gel Discount"
  When I follow "Shower Gel Discount"
  And I follow "Edit"
  When I fill in "Promotion Name" with "Great Shower Gel Promotion"
  And I press "Update"
  Then I should see "Great Shower Gel Promotion"
  Then show me the page
  


Scenario: Promotion Destroy
  Given a valid promotion
  When I follow "Promotions"
  And I follow "Shower Gel Discount"
  Then I should see "Destroy"
  When I follow "Destroy"
  Then I should see "Actually there are no active promotions now!"







  
