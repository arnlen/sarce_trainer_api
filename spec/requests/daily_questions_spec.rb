require 'rails_helper'

RSpec.describe "DailyQuestions", :type => :request do
  describe "GET /daily_questions" do
    it "works! (now write some real specs)" do
      get daily_questions_path
      expect(response).to have_http_status(200)
    end
  end
end
