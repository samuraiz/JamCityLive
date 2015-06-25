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
    # @gallery = Gallery.find(params[:id])
    @photos = @gallery.photos.all
  end

  def new
    @gallery = Gallery.new
    @photo = @gallery.photos.build
  end

  def edit
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      # if params[:images]
        params[:photos]['image'].each do |image|
          @photo = @gallery.photos.create!(:image => image, :gallery_id => @gallery.id)
        end
      # end
      redirect_to galleries_path
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  def update
    if @gallery.update(gallery_params)
      if params[:images]
        params[:images].each { |image|
          @gallery.photos.create(image: image)
        }
      end
      redirect_to galleries_path
    else
      flash[:alert] = "Something went wrong."
      render :edit
    end
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
      params.require(:gallery).permit(:title, photos_attibutes: [:id, :gallery_id, :image])
    end
end
