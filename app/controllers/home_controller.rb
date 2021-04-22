class HomeController < ApplicationController
  def index
    @graphic = Beermark.joins(:kind).group("kinds.name").count
  end
end
