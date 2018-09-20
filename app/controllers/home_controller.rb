class HomeController < ApplicationController
  def index
    @hebdo = Journal.all
  end
end
