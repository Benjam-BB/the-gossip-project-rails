class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    anonymous=User.new(first_name:"Anonymous", last_name:"unknown",age: 99,description: "unknown",email:"unknown#{rand(1000)}@mail.com",city_id:City.all.sample.id)
    anonymous.save #créer le user aninymous qui créer des gossips sans user
    @gossip = Gossip.new(title: params[:gossip_title],content: params[:gossip_content],user_id: anonymous.id) 
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
end
