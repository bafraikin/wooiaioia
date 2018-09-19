class JournalController < ApplicationController
  def woo_arti
    @a = Article.find_by(name: params['name'])
  end
end
