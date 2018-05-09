class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @trips = ["Beautiful", "Powerful", "Great", "Loungy", "Sporty", "Laid back"]
    if current_user
      @user = current_user
    end
  end
end
