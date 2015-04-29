class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  before_action :is_admin?, only: [:create, :edit, :update, :destroy]

  respond_to :html

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end

  def index
    @galleries = Gallery.all
  end

  def show
  end

  def new
    @gallery = Gallery.new
  end

  def edit
  end

  def create
    @gallery = Gallery.new(gallery_params)
    @gallery.save
    redirect_to galleries_path
  end

  def update
    @gallery.update(gallery_params)
    redirect_to galleries_path
  end

  def destroy
    @gallery.destroy
    redirect_to galleries_path
  end

  private
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    def gallery_params
      params.require(:gallery).permit(:title, :image)
    end
end
