require 'spec_helper'

describe PromotionsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/promotions" }.should route_to(:controller => "promotions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/promotions/new" }.should route_to(:controller => "promotions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/promotions/1" }.should route_to(:controller => "promotions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/promotions/1/edit" }.should route_to(:controller => "promotions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/promotions" }.should route_to(:controller => "promotions", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/promotions/1" }.should route_to(:controller => "promotions", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/promotions/1" }.should route_to(:controller => "promotions", :action => "destroy", :id => "1") 
    end
  end
end
