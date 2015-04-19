class ContestantsController < ApplicationController
  before_action :set_contestant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  before_action :is_admin?, only: [:create, :edit, :update, :destroy]

  layout 'contestants'

  respond_to :html


  def is_admin?
    redirect_to root_path unless current_user.admin?
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
    redirect_to contestants_path
  end

  def update
    @contestant.update(contestant_params)
    redirect_to contestants_path
  end

  def destroy
    @contestant.destroy
    redirect_to contestants_path
  end


  private
    def set_contestant
      @contestant = Contestant.find(params[:id])
    end

    def contestant_params
      params.require(:contestant).permit(:name, :bio, :nickname, :image)
    end
end
