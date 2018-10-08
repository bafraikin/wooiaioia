
RSpec.describe JournalController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to be(:faillure)
    end
  end

end
