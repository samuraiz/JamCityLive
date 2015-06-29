class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  before_action :is_admin?, only: [:create, :edit, :update, :destroy]

  respond_to :html

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end

  def index
    @photos = Photo.all
  end

  def show
    @photos = Photo.all
  end
  #
  def new
    @photo = Photo.new
  end
  #
  def edit
  end

  def create
    params[:images].each{ |image|
      @photo = Photo.create(image: image)
      @photo.save
    }
    redirect_to photos_path
  end

  def update
    @photo.update(photo_params)
    redirect_to gallery_path
  end

  def destroy
    @photo.destroy
    redirect_to gallery_path
  end
  #
  private
  def set_photo
    @photo = Gallery.find(params[:id])
    @photo = @gallery.photos.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image)
  end
end