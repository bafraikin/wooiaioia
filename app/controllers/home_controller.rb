class HomeController < ApplicationController
  def index
    @hebdo = Journal.all
    @body = Article.last.body
  end
end
