# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

PortfolioCard.create!([
    {
    portfolio_card_title: "Close Enough Fabrication",
    portfolio_card_description: "A website created as a way to showcase one of my favorite hobbies outside of web development, showcasing some of my many of my ongoing shop projects!",
    portfolio_card_image_url: "portfolio1"
},
{
    portfolio_card_title: "Beard Bros Dumpsters",
    portfolio_card_description: "A rails app created to help a company based out of Pennsylvania offering dumpster rental services, including delivery and junk removal assistance in the greater Pennsylvania area.",
    portfolio_card_image_url: "portfolio2",
},
{
    portfolio_card_title: "Heefusdeluxe",
    portfolio_card_description: "A comedian local to the Tacoma area doing shows here in the Northwest and beyond. Catch him hosting an open mic night at a local Comedy Club, a Super Funny one at that!",
    portfolio_card_image_url: "portfolio3",
},
{
    portfolio_card_title: "GhuackAMole",
    portfolio_card_description: "This is one of the first JavaScript projects created that I put my own spin on while following a freeCodeCamp tutorial. It's not real food. Do not eat. 1 click = 1 point. Can you get to 69? Click here to play!",
    portfolio_card_image_url: "portfolio4",
},
{
    portfolio_card_title: "Beard Industries",
    portfolio_card_description: "This website was built while familiarizing myself with the Bootstrap library, and later CSS media queries. It is now updated to a fully responsive design and showcases a transport company out of Pennsylvania. Check it out!",
    portfolio_card_image_url: "portfolio5",
}
])
Article.create!([{
    article_title: "Rails Site is Live!",
    article_description: "This site is now hosted on Rails as a Heroku app, and serves as a way to show off some of my favorite and ongoing web development projects!",
    article_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    article_image_url: "blog1"
},
{
    article_title: "PostgreSQL",
    article_description: "Connecting the Rails app to PostgreSQL, and some basic commands that are useful to me getting started.",
    article_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    article_image_url: "blog2"
},   
{
    article_title: "Project Spotlight - Beard Bros Dumpsters",
    article_description: "One of the latest projects I've been working on! This project really demonstrates how easy it can be to implement Gems like Simple Calendar and Devise.",
    article_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    article_image_url: "blog3"
},
{
    article_title: "Blog Basics",
    article_description: "This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative",
    article_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    article_image_url: "blog4"
}
=begin
{
    article_title: "",
    article_description: "",
    article_body: "",
    article_image_url: "",
}
=end
])