class PagesController < ApplicationController
  def home
    @trips = ["Beautiful", "Powerful", "Great", "Loungy", "Sporty", "Laid back"]
    if current_user
      @user = current_user
    end
  end
end
