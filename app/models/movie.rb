class Movie
  attr_accessor :title

  def initialize(title)
    self.title = title
  end

  def self.all
    #Will only return movies that have ratings.
    Rating.all.map do |rating|
      rating.movie
    end
  end

  def self.find_by_title(title)
    all.find do |movie|
      movie.title == title
    end
  end

  def ratings
    Rating.all.select do |rating|
      rating.movie == self
    end
  end

  def viewers
    self.ratings.map do |rating|
      rating.viewer
    end
  end

  def average_rating
    ratings_arr = self.ratings.map do |rating|
      rating.score
    end

    ratings_arr.inject{ |sum, el| sum + el }.to_f / ratings_arr.size
  end

  
end
