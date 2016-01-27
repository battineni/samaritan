# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
# http://easyactiverecord.com/blog/2014/03/24/using-find-or-create-with-multiple-attributes/
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)
# ["Video", "Tv"].each do |name| category = Category.find_or_initialize_by_name(name) category.update_attributes(...) end
# food_types = ["Curry", "Dessert", "Sides","Breakfast"]
# food_types.each{|d| FoodType.where(:name => d).first_or_create}
# food_preferences = ["Vegetarian", "Vegan","Meat","Dairy"]
# food_preferences.each{|d| FoodPreference.where(:name => d).first_or_create}
# cuisines = ["Italian", "Mexican", "Indian","Chinese"]
# cuisines.each{|d| Cuisine.where(:name => d).first_or_create}

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
Genres = ["Breaks", "Chill Out", "Deep House", "Drum & Bass", "Dubstep", "Electro House",
"Electronica", "Funk / R&B", "Glitch Hop", "Hard Dance", "Hardcore / Hard Techno",
"Hip-Hop", "House", "Indie Dance / Nu Disco", "Minimal", "Pop / Rock", "Progressive House",
"Psy-Trance", "Reggae / Dub", "Tech House", "Techno", "Trance"].each do |name|
  genre = Genre.find_or_create_by(name: name)
end
