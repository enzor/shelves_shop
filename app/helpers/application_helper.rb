# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def number_to_currency_gbp (number)
    number_to_currency(number, { :unit => "&pound;"})
  end
  
end
