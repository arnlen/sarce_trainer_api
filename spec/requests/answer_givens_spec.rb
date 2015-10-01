require 'rails_helper'

RSpec.describe "AnswerGivens", :type => :request do
  describe "GET /answer_givens" do
    it "works! (now write some real specs)" do
      get answer_givens_path
      expect(response).to have_http_status(200)
    end
  end
end
