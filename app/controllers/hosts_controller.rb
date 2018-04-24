class HostsController < ApplicationController

  def index
  end

  def new
    @host = Host.new
    @host.user = current_user
  end

  def create
    @host = Host.new(host_params)
    @host.user = current_user
    if @host.save
      redirect_to @host
    else
      raise
      render :new
    end
  end

  def show
    @host = Host.find(params[:id])
  end

  def host_params
    params.require(:host).permit(:speciality, :age, :phone_number, :address, :postal_code, :city, :country, images: [])
  end
end
