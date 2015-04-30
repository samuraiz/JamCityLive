class TvsController < ApplicationController
  before_action :set_tv, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  before_action :is_admin?, only: [:create, :edit, :update, :destroy]

  respond_to :html

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end

  def index
    @tvs = Tv.all
  end

  def show
  end

  def new
    @tv = Tv.new
  end

  def edit
  end

  def create
    @tv = Tv.new(tv_params)
    @tv.save
    redirect_to tvs_path
  end

  def update
    @tv.update(tv_params)
    redirect_to tvs_path
  end

  def destroy
    @tv.destroy
    redirect_to tvs_path
  end

  private
    def set_tv
      @tv = Tv.find(params[:id])
    end

    def tv_params
      params.require(:tv).permit(:title, :youtube_id)
    end
end
