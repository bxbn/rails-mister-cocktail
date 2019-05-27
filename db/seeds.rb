# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Rails.application.routes.draw do
#   # get "cocktail/:cocktail_id/dose",     to: "dose#index"
#   # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
#   # post "restaurants/:restaurant_id/reviews",    to: "reviews#create"
#   # get "reviews/:id",                            to: "reviews#show"
#   # get "reviews/:id/edit",                       to: "reviews#edit"
#   # patch "reviews/:id",                          to: "reviews#update"
#   # delete "reviews/:id",                         to: "reviews#destroy"

# end
Cocktail.destroy_all
Ingredient.destroy_all
Cocktail.create(name: "Amaretto Sour")
Cocktail.create(name: "Tequila Sunrise")
Cocktail.create(name: "Cosomopolitan")
Cocktail.create(name: "Dirty Martini")
Cocktail.create(name: "Whiskey Sour")


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
