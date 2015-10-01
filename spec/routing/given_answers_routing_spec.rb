require "rails_helper"

RSpec.describe GivenAnswersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/given_answers").to route_to("given_answers#index")
    end

    it "routes to #new" do
      expect(:get => "/given_answers/new").to route_to("given_answers#new")
    end

    it "routes to #show" do
      expect(:get => "/given_answers/1").to route_to("given_answers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/given_answers/1/edit").to route_to("given_answers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/given_answers").to route_to("given_answers#create")
    end

    it "routes to #update" do
      expect(:put => "/given_answers/1").to route_to("given_answers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/given_answers/1").to route_to("given_answers#destroy", :id => "1")
    end

  end
end
