
RSpec.describe JournalController, type: :controller do

  describe "GET #index" do
    before(:each) do 
        create(:journal, :with_article, name: 'gc')
      end

    it "returns http success" do
      get :index, :params => {name: "gc"}
      expect(response).to have_http_status(:success)
    end
  end

end
