class HomeController < ApplicationController
  def index_woh
    @art = Journal.find_by(name: "woo").articles 
  end
end
