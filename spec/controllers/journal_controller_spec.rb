require 'rails_helper'

RSpec.describe JournalController, type: :controller do

  describe "GET #woo_index" do
    it "returns http success" do
      get :woo_index
      expect(response).to have_http_status(:success)
    end
  end

end
