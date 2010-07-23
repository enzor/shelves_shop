Given /^a logged valid user$/ do
  @user = Factory.create(:user,:roles_mask => 2)
  visit login_path
  fill_in "user_session_username", :with => "vincenzo"
  fill_in "user_session_password", :with => "rivello"
  click_button "Login"
end

Given /^a logged valid admin$/ do 
 @user = Factory.create(:user,:roles_mask => 1)
  visit login_path
  fill_in "user_session_username", :with => "vincenzo"
  fill_in "user_session_password", :with => "rivello"
  click_button "Login"
end