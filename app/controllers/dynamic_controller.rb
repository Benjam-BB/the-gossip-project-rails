class DynamicController < ApplicationController
  def gossip
    @gossip = Gossip.all
    @user = User.all
  end

  def user
    @user = User.all
    @gossip = Gossip.all
  end

  def welcome
  end
end
