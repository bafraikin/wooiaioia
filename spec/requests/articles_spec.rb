require 'rails_helper'

RSpec.describe "Articles", type: :request do
  before(:each) do
    @ad = create(:article)
  end

  describe "GET /articles non authenticated" do
    it "works! (now write some real specs)" do
      get articles_path
      expect(response).to redirect_to root_path
    end
  end

  describe "Get /Articles authenticated" do
    in_context :authenticated do
      it "okay" do
        get articles_path
        expect(request.env['PATH_INFO']).to eq("/articles")
      end
    end
  end
end
