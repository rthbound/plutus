require 'spec_helper'

module Plutus
  describe EntriesController do
    routes { Plutus::Engine.routes }

    describe "routing" do
      it "recognizes and generates #index" do
        { :get => "/entries" }.should route_to(:controller => "plutus/entries", :action => "index")
      end

      it "recognizes and generates #show" do
        { :get => "/entries/1" }.should route_to(:controller => "plutus/entries", :action => "show", :id => "1")
      end

      it "recognizes and generates #edit" do
        { :get => "/entries/1/edit" }.should_not be_routable
      end

      it "recognizes and generates #create" do
        { :post => "/entries" }.should_not be_routable
      end

      it "recognizes and generates #update" do
        { :put => "/entries/1" }.should_not be_routable
      end

      it "recognizes and generates #destroy" do
        { :delete => "/entries/1" }.should_not be_routable
      end
    end
  end
end
