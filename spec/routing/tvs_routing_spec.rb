require "rails_helper"

RSpec.describe TvsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tvs").to route_to("tvs#index")
    end

    it "routes to #new" do
      expect(:get => "/tvs/new").to route_to("tvs#new")
    end

    it "routes to #show" do
      expect(:get => "/tvs/1").to route_to("tvs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tvs/1/edit").to route_to("tvs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tvs").to route_to("tvs#create")
    end

    it "routes to #update" do
      expect(:put => "/tvs/1").to route_to("tvs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tvs/1").to route_to("tvs#destroy", :id => "1")
    end

  end
end
