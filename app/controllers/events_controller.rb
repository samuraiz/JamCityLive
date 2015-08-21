class EventsController < ApplicationController
  def list
    @galleries = Gallery.all
  end
end