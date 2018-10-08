require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = create(:article, name: "Name", description: "Description", body: "MyText")
    @id = @article.id 
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/#{@id}/)
  end
end
