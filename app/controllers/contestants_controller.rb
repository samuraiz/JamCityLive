class ContestantsController < ApplicationController
  before_action :set_contestant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :is_admin?, only: [:create, :edit, :update, :destroy]

  respond_to :html


  def is_admin?
    if current_user.admin?
      true
    else
      redirect_to root_path
    end
  end

  def index
    @contestants = Contestant.all
  end

  def show
  end

  def new
    @contestant = Contestant.new
  end

  def edit
  end

  def create
    @contestant = Contestant.new(contestant_params)
    @contestant.save
  end

  def update
    @contestant.update(contestant_params)
  end

  def destroy
    @contestant.destroy
  end

  private
    def set_contestant
      @contestant = Contestant.find(params[:id])
    end

    def contestant_params
      params.require(:contestant).permit(:name, :bio, :nickname, :image)
    end
end
