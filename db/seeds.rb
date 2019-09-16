# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Blogs
10.times do |iter|
  Blog.create!(
    title: "My Blog Post #{iter}",
    body: "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Morbi nec finibus eros. Pellentesque sit amet dapibus justo, ac vehicula nulla. Sed eu augue ac odio interdum commodo eu at velit. Cras tempor erat et mollis varius. Mauris eu velit enim. Maecenas vel quam erat."
  )
end
puts "blog posts created"

# Skills
5.times do |iter|
  Skill.create!(
    title: "Rails #{iter}",
    percent_utilized: 15
  )
end
puts "skills created"

# Portfolio Items
9.times do |iter|
  Portfolio.create!(
    title: "Portfolio Title: #{iter}",
    subtitle: "My great service",
    body: "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Morbi nec finibus eros. Pellentesque sit amet dapibus justo, ac vehicula nulla. Sed eu augue ac odio interdum commodo eu at velit. Cras tempor erat et mollis varius. Mauris eu velit enim. Maecenas vel quam erat.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end
puts "Portfolio items created"
