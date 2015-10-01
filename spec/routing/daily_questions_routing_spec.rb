require "rails_helper"

RSpec.describe DailyQuestionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/daily_questions").to route_to("daily_questions#index")
    end

    it "routes to #new" do
      expect(:get => "/daily_questions/new").to route_to("daily_questions#new")
    end

    it "routes to #show" do
      expect(:get => "/daily_questions/1").to route_to("daily_questions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/daily_questions/1/edit").to route_to("daily_questions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/daily_questions").to route_to("daily_questions#create")
    end

    it "routes to #update" do
      expect(:put => "/daily_questions/1").to route_to("daily_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/daily_questions/1").to route_to("daily_questions#destroy", :id => "1")
    end

  end
end
