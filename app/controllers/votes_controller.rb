class VotesController < ApplicationController
  before_action :set_vote, only: [:destroy]
  before_action :authenticate_user!

  def new
    @vote_contestant = Vote.new
  end

  def create
    @vote_contestant = Vote.new(contestant_vote_params)
    @vote_contestant.save
    redirect_to :back, notice: "You have successfully Voted for the Contestant!"
  end

  def destroy
    @vote_contestant.destroy
    redirect_to :back
  end

  def set_vote
    @vote_contestant = Vote.find(params[:id])
  end

  def contestant_vote_params
    params.require(:vote).permit(:contestant_id, :user_id)
  end
end