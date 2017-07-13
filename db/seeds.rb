# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hipHop = Category.create!(name: 'Hip-Hop')
pop = Category.create!(name: 'Pop')
rock = Category.create!(name: 'Rock')
ambient = Category.create!(name: 'Ambient')


trackOne = Track.create!(title: 'Song 1', length: 3.22, category: hipHop, audio:'https://s3.eu-west-2.amazonaws.com/thomas-allen/Foo+Fighters-Run+(LetraLyrics).mp3' )
trackTwo = Track.create!(title: 'Song 2', length: 1.28, category: rock, audio:'https://s3.eu-west-2.amazonaws.com/thomas-allen/Foo+Fighters-Run+(LetraLyrics).mp3'  )
trackThree = Track.create!(title: 'Song 3', length: 6.50, category: ambient, audio:'https://s3.eu-west-2.amazonaws.com/thomas-allen/Foo+Fighters-Run+(LetraLyrics).mp3'  )
