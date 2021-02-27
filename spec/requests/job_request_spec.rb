require 'rails_helper'

RSpec.describe "Jobs", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/job/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/job/show"
      expect(response).to have_http_status(:success)
    end
  end

end
