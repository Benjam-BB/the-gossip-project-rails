class UsersController < ApplicationController
  def show
    @user = User.all
    @gossip = Gossip.all
  end

  def new
  end

  def create
  end

  def update
  end

  def index
  end
end
