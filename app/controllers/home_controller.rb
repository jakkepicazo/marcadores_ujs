class HomeController < ApplicationController
  def index
    @distribution = Beermark.joins(:kind).group("kinds.name").count
  end
end
