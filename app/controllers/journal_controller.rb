class JournalController < ApplicationController
  
  def index
    @art = Journal.find_by(name: params['name']).articles 
  end

  def arti
    @article = Article.find(params['id'])
    @hebdo = @article.journal
  end
end
