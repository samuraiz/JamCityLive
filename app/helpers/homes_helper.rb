module HomesHelper
  def access
    "https://www.youtube.com/embed/#{Tv.last.youtube_id}?rel=0&amp;showinfo=0"
  end
end
