require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
avatar = Movie.new("avatar")
snatch = Movie.new("snatch")
star_wars = Movie.new("Star Wars")

me = Viewer.new("Charles")
luke = Viewer.new("Lukasz")
tor = Viewer.new("Torben")

me.create_rating(avatar, 5)
tor.create_rating(avatar, 6)
Pry.start
