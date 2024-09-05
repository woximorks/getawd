# README

1. Initial Git / Heroku setup / Site Framework
    - Following the basic Heroku documentation as outlined here for step 1 - https://devcenter.heroku.com/articles/getting-started-with-rails7#create-a-new-or-upgrade-an-existing-rails-app
    - Commit is also based on a lot of these same principles https://github.com/woximorks/beardbrosdumpsters/tree/6c4d934c8660202fcc7568f87652db6f98cd77cf
- a. Ran Commands to create initial framework 
    - rails g controller Pages home blog portfolio
    - rails g scaffold PortfolioCard portfolio_card_title portfolio_card_description:text portfolio_card_image_url
    - rails g scaffold Article article_title article_body:text article_description article_image_url
    - rails g scaffold SiteVar site_var_heading1 site_var_heading2 site_var_heading3 site_var_heading4 site_var_heading5 site_var_disclaimer1
    - rails db:create
    - rails db:migrate
- b. Added to Gemfile
    - gem 'bootstrap', '~> 5.3.3'
    - gem 'dartsass-sprockets'
- c. Ran commands:
    - bundle install
- e. Backup the db file and put it in that folder
    - mkdir path/to/db/backup/foldername
        - Create db backup folder
    - Specific command to run this can be found in commands.sql file locally
- f. Devise implementation
    - ran command: bundle add devise
    - ran command: rails g devise:install
        - Added line to development.rb related to emails devise will send
    - rails g devise User
        - rails db:migrate
    - Removed registerable from the User model
        - New accounts cannot be created
        - Added authentication requirements to articles, site_vars, and portfolio_cards controller
        - Created navuser shared view
- f. Really basic front end implementation

2. Site Planning
    - Some filler content for now to continue work on as I have time
    - 3 initial blog articles
    - 5 initial projects
    
3. Doin a migration
    - rails g migration AddUrlToPortfolioCard portfolio_card_url
    - Showing these URLs on the view
    - Adding URLs to the database seed file

4. Front End and Design
    - ChatGPT assisted logo and other related image content
    - Stylesheets separated

5. Adding new page for videos
    - https://gorails.com/forum/embed-youtube-video-in-rails-app
    - rails g model VideoCard youtube_id
    - Updating nav so that we can get there
    - Removing some bloat
    - rails g migration AddVideoCardTitleToVideoCard video_card_title
    - rails g migration AddVideoCardDescriptionToVideoCard video_card_description
    - view updated for responsive sizing

6. Search for portfolio section implemented
    - pg_search
    - https://github.com/Casecommons/pg_search
    - https://www.youtube.com/watch?v=ZRpXAY21t28