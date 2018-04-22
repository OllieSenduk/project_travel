class PagesController < ApplicationController
  def home
    @trips = ["Beautiful", "Powerful", "Great", "Loungy", "Sporty", "Laid back"]
  end
end
