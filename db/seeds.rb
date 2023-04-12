# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
articles = [
    { title: 'Jhon', description: 'Nice man' },
    { title: 'Arlen', description: 'Good person' },
    { title: 'Hellen', description: 'Lord of the season' },
    { title: 'Kofi', description: 'Nice man' },
    { title: 'Ben', description: 'Good person' },
    { title: 'Elisa', description: 'Lord of the season' },
    { title: 'Baron', description: 'Nice man' },
    { title: 'Allan', description: 'Good person' },
    { title: 'Kwadjo', description: 'Lord of the season' }
  ]
  
  # Loop through the array of articles and create them in the database
  articles.each do |article_data|
    Article.create!(article_data)
  end