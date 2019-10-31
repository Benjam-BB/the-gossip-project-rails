class UsersController < ApplicationController
  def show
    @users = User.all
    @gossip = Gossip.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(first_name: params[:first_name],last_name: params[:last_name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], age: params[:age], description: params[:description], city_id: City.all.sample.id) 
    if @user.save # essaie de sauvegarder en base @user
      log_in(@user)
      redirect_to "/welcome/#{params[:first_name]}"
    else
      render :new
    	
    end
  end

  def update
  end

  def index
  end
end
