class StaticController < ApplicationController
  def index
    @gossip= Gossip.all
    @user = User.all
  end
  
  def team
  end

  def contact
  end 
end
