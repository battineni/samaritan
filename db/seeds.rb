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
# csv
# require 'csv'
# CSV.foreach(Rails.root.join("db/seeds_data/movies.csv"), headers: true) do |row|
#   Movie.find_or_create_by(title: row[0], release_year: row[1], price: row[2], description: row[3], imdb_id: row[4], poster_url: row[5])
# end
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
# Genres = ["Breaks", "Chill Out", "Deep House"]
# Genres.each do |name|
#   genre = Genre.find_or_create_by(name: name)
# end

require 'csv'
#Venues
CSV.foreach(Rails.root.join("db/seed_data/venues.csv"), headers: true) do |row|
   Venue.find_or_create_by(name: row[0], venue_type: row[1], about: row[2], city: row[3], state: row[4], country: row[5])
end
#Bands
CSV.foreach(Rails.root.join("db/seed_data/bands.csv"), headers: true) do |row|
   Band.find_or_create_by(name: row[0])
end
#Genres
CSV.foreach(Rails.root.join("db/seed_data/genres.csv"), headers: true) do |row|
   Genre.find_or_create_by(name: row[0])
end






