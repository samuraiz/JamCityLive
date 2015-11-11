class HomesController < ApplicationController
  def show
    # @posts = Post.all
    # @tvs = Tv.all

    #latest news
    @posts = Post.last(4).reverse

    #video
    @tv = Tv.last
  end
end
