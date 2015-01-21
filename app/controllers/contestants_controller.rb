class ContestantsController < ApplicationController
  before_action :set_contestant, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @contestants = Contestant.all
    respond_with(@contestants)
  end

  def show
    respond_with(@contestant)
  end

  def new
    @contestant = Contestant.new
    respond_with(@contestant)
  end

  def edit
  end

  def create
    @contestant = Contestant.new(contestant_params)
    @contestant.save
    respond_with(@contestant)
  end

  def update
    @contestant.update(contestant_params)
    respond_with(@contestant)
  end

  def destroy
    @contestant.destroy
    respond_with(@contestant)
  end

  private
    def set_contestant
      @contestant = Contestant.find(params[:id])
    end

    def contestant_params
      params.require(:contestant).permit(:name, :bio, :nickname, :image)
    end
end
