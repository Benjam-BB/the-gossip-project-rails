class GossipsController < ApplicationController
  def new
  end

  def create
    @gossip = Gossip.new(title: params[:gossip_title],content: params[:gossip_content],user_id: 121) #id 121 pour rechercher le user anonymous dont l'id est 121
  	if @gossip.save # essaie de sauvegarder en base @gossip
    	flash.now[:success] = 'Génial, tu as bien enregistré ton Gossip !'
      render 'gossips/index', to: 'gossips#index'
    else
    	flash.now[:error] = "Veuillez rentrer un titre (de plus de 3 caractères) un contenu !"
    	render 'gossips/new', to: 'gossips#new'
    	
    end
  end

  def show
  end

  def index
  end
end
