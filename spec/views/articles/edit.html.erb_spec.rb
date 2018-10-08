require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = create(:article)
    @journal_array = []
    3.times do 
    @journal_array << create(:journal)
    end
  end

  it "renders the edit article form" do
    render
    assert_select "form[action=?][method=?]", article_path(@article), "post" do
      assert_select "input[name=?]", "article[name]"
      assert_select "textarea[name=?]", "article[description]"
      assert_select "textarea[name=?]", "article[body]"
      assert_select "select[name=?]", "article[journal_id]"
    end
  end
end
