class Viewer
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items 
    QueueItem.all.select do |queueitem|
      queueitem.viewer == self 
    end
  end

  def queue_movies 
    queue_items.map do |queueitem|
      queueitem.movie
    end 
  end 


  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
      if queue_movies.include?(movie)
        rating = QueueItem.rating
      else 
        QueueItem.new(movie, self, rating)
      end
    end
     
end
