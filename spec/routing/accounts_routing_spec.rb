require 'spec_helper'

module Plutus
  describe AccountsController do
    routes { Plutus::Engine.routes }

    describe "routing" do
      it "recognizes and generates #index" do
        { :get => "/accounts" }.should route_to(:controller => "plutus/accounts", :action => "index")
      end

      it "recognizes and generates #show" do
        { :get => "/accounts/1" }.should route_to(:controller => "plutus/accounts", :action => "show", :id => "1")
      end

      it "recognizes and generates #edit" do
        { :get => "/accounts/1/edit" }.should_not be_routable
      end

      it "recognizes and generates #create" do
        { :post => "/accounts" }.should_not be_routable
      end

      it "recognizes and generates #update" do
        { :put => "/accounts/1" }.should_not be_routable
      end

      it "recognizes and generates #destroy" do
        { :delete => "/accounts/1" }.should_not be_routable
      end
    end
  end
end
