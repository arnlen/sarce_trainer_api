require "rails_helper"

RSpec.describe AnswerGivensController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/answer_givens").to route_to("answer_givens#index")
    end

    it "routes to #new" do
      expect(:get => "/answer_givens/new").to route_to("answer_givens#new")
    end

    it "routes to #show" do
      expect(:get => "/answer_givens/1").to route_to("answer_givens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/answer_givens/1/edit").to route_to("answer_givens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/answer_givens").to route_to("answer_givens#create")
    end

    it "routes to #update" do
      expect(:put => "/answer_givens/1").to route_to("answer_givens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/answer_givens/1").to route_to("answer_givens#destroy", :id => "1")
    end

  end
end
