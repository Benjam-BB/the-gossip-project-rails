class CityController < ApplicationController
  def show
    @gossip = Gossip.all
    @user = User.all
    @city = City.find(params[:id])
  end

  def index
  end
end
