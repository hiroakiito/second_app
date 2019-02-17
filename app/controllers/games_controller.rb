class GamesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  
  def index
  end

  def new
  end

  def update
  end

  def show
  end

  def edit
  end

  def update
  end
  
  

  def create
    @game = current_user.games.build(game_params)
    if @game.save
      flash[:success] = "game created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def game_params
      params.require(:game).permit(:title, :team_1, :team_2, :description, :score_1, :score_2, :tm_1, :tm_2)
    end
end
