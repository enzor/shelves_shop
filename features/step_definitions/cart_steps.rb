Given /^a tons of products exists$/ do
  @orange = Factory.create(:product,:code => "OR1", :name => "Orange", :price => "0.29" )
  @bread = Factory.create(:product,:code => "BR1", :name => "Bread", :price => "1.00" )
  @milk = Factory.create(:product,:code => "MK1", :name => "Milk", :price => "0.90")
  @shower_gel = Factory.create(:product,:code => "SG1", :name => "Shower Gel", :price => "1.19")
end
