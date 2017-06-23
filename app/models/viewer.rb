class Viewer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name = nil)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def create_rating(movie, score)
    Rating.new(self, movie, score)
  end

  def self.all
    #Returns only viewers who have left ratings.
    Rating.all.map do |rating|
      rating.viewer
    end
  end

  def self.find_by_name(name)
    #Which name is coming through? Full, first or last?
    #Check them all maybe?
    all.find do |viewer|
      viewer.full_name == name || viewer.first_name == name || viewer.last_name == name
    end
  end
end
