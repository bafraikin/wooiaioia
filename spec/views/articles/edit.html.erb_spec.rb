require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = create(:article)
      
=begin
      assign(:article, Article.create!(
      :name => "MyString",
      :description => "MyString",
      :body => "MyText",
      :journal_id => Journal.all.sample.id
    ))
=end
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input[name=?]", "article[name]"

      assert_select "input[name=?]", "article[description]"

      assert_select "textarea[name=?]", "article[body]"

      assert_select "input[name=?]", "article[journal_id]"
    end
  end
end
