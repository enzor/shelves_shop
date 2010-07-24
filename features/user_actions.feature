Feature: User Actions
  In order test all actions
  As a user
  I want to register, login, edit my data


Scenario: Successful registration
  Given I go to the home page
  When I follow "Register"
  And I fill in "Username" with "Ciccio"
  And I fill in "Password" with "Pasticcio"
  And I fill in "Password Confirmation" with "Pasticcio"
  And I fill in "Email" with "ciccio@pasticcio.it"
  And I choose "user_roles__user"
  And I press "Create"
  Then I should be on the home page

Scenario: Login
  Given a valid user
  When I go to the home page
  And I follow "Login"
  And I fill in "Username" with "vincenzo"
  And I fill in "Password" with "rivello"
  And I press "Login"
  Then I should be on the home page
  And I should see "Logout"

Scenario: Edit my data
  Given a logged valid user
  When I go to the home page
  And I follow "Edit Profile"
  And I fill in "Password" with "cucumber"
  And I fill in "Password Confirmation" with "cucumber"
  And I press "Update"
  Then I should be on the home page






 
