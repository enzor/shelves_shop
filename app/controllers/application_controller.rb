class ApplicationController < ActionController::Base
 
  helper :all
 
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "You are not authorized to view this page"
    redirect_to root_url
  end
  
  def current_cart
    if current_user.cart.nil?
      @current_cart = Cart.create!(:user_id => current_user.id)
      current_user.cart = @current_cart
    end
    if current_user.cart
      @current_cart ||= current_user.cart
      current_user.cart = nil if @current_cart.purchased_at
    end

    @current_cart
  end
  
  
  helper_method :current_user
 
  private
  
  # Standard Current User variables
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
end
