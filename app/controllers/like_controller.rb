class LikeController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.new(gossip_id: params[:gossip_id], user_id: current_user.id)

  end

  def destroy
  end

  def show
  end
end
