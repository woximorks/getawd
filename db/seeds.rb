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
    portfolio_card_description: "A website created as a way to showcase one of my favorite hobbies outside of web development, where you can see some of my many of my ongoing shop projects!",
    portfolio_card_image_url: "portfolio1",
    portfolio_card_url: "https://cefab-offroad.com"
},
{
    portfolio_card_title: "Beard Bros Dumpsters",
    portfolio_card_description: "A rails app created to help a company based out of Pennsylvania offering dumpster rental services, including delivery and junk removal assistance in the surrounding area.",
    portfolio_card_image_url: "portfolio2",
    portfolio_card_url: "https://beardbrosdumpsters.com"
},
{
    portfolio_card_title: "Heefusdeluxe",
    portfolio_card_description: "One of my favorite comedians local to the Tacoma area, doing weekly shows in the Northwest and beyond. Catch him hosting an open mic night at a local Comedy Club, a Super Funny one at that!",
    portfolio_card_image_url: "portfolio3",
    portfolio_card_url: "https://heefusdeluxe.com"
},
{
    portfolio_card_title: "GhuackAMole",
    portfolio_card_description: "This is one of the first JavaScript projects created while following a freeCodeCamp tutorial (that I put my own spin on). It's not real food. Do not eat. 1 click = 1 point. Can you get to 69?",
    portfolio_card_image_url: "portfolio4",
    portfolio_card_url: "https://master.d2rge8c7efug7r.amplifyapp.com/"
}
])
Article.create!([{
    article_title: "Rails Site is Live!",
    article_description: "This site is now hosted on Rails as a Heroku app, and serves as a way to show off some of my favorite and ongoing web development projects!",
    article_body: "After spending some time learning very basic web development concepts using HTML, CSS, and Javascript, I found it was time to pick a framework to apply this knowledge. For a number of reasons, the ever-popular Ruby on Rails framework fit the bill for me at this moment in my life, so I have spent the last 6-8 months trying to learn and apply these development principles in a Rails setting. I feel like I am starting to get somewhere!",
    article_image_url: "blog1"
},
{
    article_title: "PostgreSQL",
    article_description: "Connecting the Rails app to PostgreSQL, and some basic commands that are useful to me getting started.",
    article_body: "Part of hosting as a Heroku app meant that sqlite3, the lightweight yet powerful database manager that comes packaged with Rails had to be replaced in favor of PostgreSQL. I was okay with this, as it will allow me to play around with one of the largest and most powerful open-source DBMS in a real-world setting. I also dropped a table before I really knew what I was doing (not to say that I do now), and I gotta say, it really does break stuff. 0/10 do not recommend. Anyway, with all of that I learned how to take a regular pg_dump so that my database stays backed up, and some other useful commands both on the command line and within psql itself. Pretty awesome stuff!",
    article_image_url: "blog2"
},   
{
    article_title: "Project Spotlight - Beard Bros Dumpsters",
    article_description: "One of the latest projects I've been working on! This one demonstrates how easy it is to implement Gems like Simple Calendar and Devise.",
    article_body: "Beard Bros Dumpsters, LLC is a company based out of Pennsylvania that offers a unique service for residents and businesses alike – dumpster delivery. This Rails app is a site built to showcase that business while streamlining the company scheduling process and other related tasks, using Gems like Devise, Bootstrap and Simple Calendar to make that happen! Head on over to beardbrosdumpsters.com and check it out!",
    article_image_url: "blog3"
}
])