require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    @articles = []
    2.times do
    @articles << create(:article, name: 'Name', description: 'Description', body: 'MyText')
    end
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
