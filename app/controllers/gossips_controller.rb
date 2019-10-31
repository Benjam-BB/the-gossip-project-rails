class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new, :show]
  before_action :user_is_author, only: [:edit, :update, :destroy]

  def new
    @gossip = Gossip.new
  end

  def create
    anonymous=User.new(first_name:"Anonymous", last_name:"unknown",age: 99,description: "unknown",email:"unknown#{rand(1000)}@mail.com",city_id:City.all.sample.id)
    anonymous.save #créer le user aninymous qui créer des gossips sans user
    @gossip = Gossip.new(title: params[:gossip_title],content: params[:gossip_content]) 
    @gossip.user = User.find_by(id: session[:user_id]) #permet de reprendre l'id du user
  	if @gossip.save # essaie de sauvegarder en base @gossip
      render 'index'
    else
      render 'gossips/new', to: 'gossips#new'
    	
    end
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(title: params[:gossip_title],content: params[:gossip_content])
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path, :notice => "Your gossip has been deleted"
  end

  private

  def authenticate_user
    unless current_user
      flash.now[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end

  def user_is_author
    @gossip = Gossip.find(params[:id])
    unless current_user == User.find(@gossip.user_id)
      flash.now[:danger] = "Ce n'est pas votre gossip vous ne pouvez pas l'éditer !"
      redirect_to gossip_path(@gossip)
    end
  end
end
