# `Movie.all`
#   + returns an array of all `Movie`
# + `Movie#queue_items`
#   + returns an array of all the `QueueItem` instances that contain this movie
# + `Movie#viewers`
#   + returns an array of all of the `Viewer`s with this `Movie` instance in their queue
# + `Movie#average_rating`
#   + returns the average of all ratings for this instance of `Movie`
# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating


class Movie

  attr_accessor :title, :rating

  @@all = []

  def initialize(title, rating)
    @title = title
    @rating = rating

    @@all  << self
    # self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |i|
      i.movie == self
    end
  end

  def viewers
    queue_items.map do |i|
      i.viewer
    end
  end

  def ratings
    queue_items.map do |i|
      i.rating
    end
  end

end
