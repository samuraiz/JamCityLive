class HomesController < ApplicationController
  def show
    @posts = Post.all
    @tvs = Tv.all
  end
end
