require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index_woh" do
    it "returns http success" do
      get :index_woh
      expect(response).to have_http_status(:success)
    end
  end

end
