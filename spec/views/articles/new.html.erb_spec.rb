require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :name => "MyString",
      :description => "MyString",
      :body => "MyText",
      :journal_id => 1
    ))

    @journal_array = []
    3.times do 
      @journal_array << create(:journal)
    end
  end

it "renders new article form" do
  render

  assert_select "form[action=?][method=?]", articles_path, "post" do

    assert_select "input[name=?]", "article[name]"

    assert_select "textarea[name=?]", "article[description]"

    assert_select "textarea[name=?]", "article[body]"

    assert_select "select[name=?]", "article[journal_id]"
  end
end
end
