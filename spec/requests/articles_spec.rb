require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /articles" do
    it "works! (now write some real specs)" do
      get articles_path
      expect(response).to redirect_to root_path
    end
  end
end
