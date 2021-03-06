require 'spec_helper'

module Plutus
  describe EntriesController do
    routes { Plutus::Engine.routes }

    def mock_entry(stubs={})
      @mock_entry ||= mock_model(Entry, stubs)
    end

    describe "GET index" do
      it "assigns all entries as @entries" do
        Entry.stub(:all).and_return([mock_entry])
        get :index
        assigns[:entries].should == [mock_entry]
      end
    end

    describe "GET show" do
      it "assigns the requested entry as @entry" do
        Entry.stub(:find).with("37").and_return(mock_entry)
        get :show, :id => "37"
        assigns[:entry].should equal(mock_entry)
      end
    end
  end
end
