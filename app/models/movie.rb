class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items 
    QueueItem.all.select do |queueitem|
      queueitem.movie == self
    end
  end

  def viewers 
    queue_items.map do |queueitem|
      queueitem.viewer 
    end
  end

  def average_rating 
    total = 0
    queue_items.each do |queueitem|
      total += queueitem.rating
    end 
    total.to_f/queue_items.length
  end

  def self.highest_rated 
    self.all.max_by {|movie| movie.average_rating}
    movie.title
  end

end
