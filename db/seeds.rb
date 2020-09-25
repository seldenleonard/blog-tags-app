# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: "Cooking Tips", text: "Lots of salt.")
Post.create(title: "Things I Enjoy", text: "Biking")
Post.create(title: "How to Clean the Stove", text: "Wet towel")

Tag.create(category: "Cooking")
Tag.create(category: "Self-Care")
Tag.create(category: "Cleaning")
Tag.create(category: "Household")

PostTag.create(post_id: 1, tag_id: 1)
PostTag.create(post_id: 1, tag_id: 4)
PostTag.create(post_id: 1, tag_id: 2)
PostTag.create(post_id: 2, tag_id: 2)
PostTag.create(post_id: 3, tag_id: 3)
PostTag.create(post_id: 3, tag_id: 4)