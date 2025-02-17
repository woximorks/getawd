# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.11.6] - 2025/02/17  
### SCSS Cleanup & Project Refactoring  

### Added  
- **`_about.scss`**: New SCSS partial for About page styles.  
- **`_contact.scss`**: New SCSS partial for Contact page styles.  

### Changed  
- **`application.scss`**: Moved About and Contact styles to dedicated SCSS files for better organization.  
- **`projects_controller.rb`**: Removed `show` action since projects link to external URLs.  

### Removed  
- **`projects/show.html.erb`**: Removed unnecessary view file (not ever needed).  

### Notes  
- Improved SCSS structure for easier maintenance.  
- Simplified project handling by removing an unnecessary controller action and view.  


## [1.11.5] - 2025/02/17
### Footer Implementation

### Added
- **`layouts/_footer.html.erb`**: New footer partial for consistent site-wide use.

### Changed
- **`layouts/application.html.erb`**: Integrated the new footer into the layout.
- **`blog_posts/show.html.erb`**: Fixed a missing closing `<div>` to ensure proper structure.

### Notes
- The new footer improves site consistency and navigation.
- Fixed structural issue in blog posts to prevent layout breaks.

## [1.11.4] - 2025/02/17
### Blog Cleanup

### Changed
- **`home/index.html.erb`**: Updated the **About** subheading name for clarity.
- **`application.scss`**: Added styling improvements for blog post formatting.
- **`blog_posts/show.html.erb`**: Removed unnecessary elements for a cleaner layout.

### Notes
- Improves readability and structure of the blog section.
- Simplifies blog post presentation by removing unnecessary bloat.

## [1.11.3] - 2025/02/16
### Homepage Updates

### Changed
- **`index.html.erb`**: Moved **About** and **Contact** sections to the top for better visibility.
- **`application_controller.rb`**: Updated homepage content display logic.
- **`application.scss`**: Added styling for `<h3>` elements.

### Notes
- Improves homepage organization for a better user experience.
- Enhanced styling consistency for section headers.

## [1.11.2] - 2025/02/11  
### Status Indicators and App Name Fix  

### Changed  
- **`_calendar.scss`**: Added `.status-dot` class for task status indicators.  
- **`calendar/show.html.erb`**: Implemented status dots in both calendar views.  
- **`layouts/application.html.erb`**: Fixed app name display from **"AwD"** to **"AWD"**.  

### Notes  
- Status indicators improve task visibility in the calendar.  
- Minor UI correction for consistent branding.  

## [1.11.1] - 2025/02/08
### Improved Pagination and SCSS Organization

### Added
- **`_videos.scss`**: New SCSS partial for video-related styles.
- **`_tasks.scss`**: New SCSS partial for task-specific styles.

### Changed
- **`tasks_controller.rb`**:
  - Implemented pagination, now displaying **10 tasks per page** for better performance.

### Notes
- SCSS files are now more modular, improving maintainability.
- Pagination logic enhances task list usability and prevents long page loads.

## [1.11.0] 2025/02/08
### Calendar Moved to Its Own Section

### Added
- **`views/calendar/show.html.erb`**: New standalone calendar view
- **`calendar_controller.rb`**: Handles displaying tasks in the calendar
- **`_navbar.html.erb`**: Added link to the calendar (visible when logged in)

### Changed
- **`tasks/index.html.erb`**: Removed embedded calendar
- **`calendar/show.html.erb`**: Moved calendar here from task index
- **`calendar_controller.rb`**:
  - Now displays tasks for the selected month only  
  - Requires authentication before access  
- **`application.scss`, `_calendar.scss`**: Cleaned up and organized styles  
- **`_navbar.scss`**: Fixed text size issue that caused nav to break

### Notes
- This change prevents the task list pagination from affecting the calendar.

## [1.10.14] 2025/02/07
### Recurring tasks, backup db

### Added
- database dump file
- console.rb

### Changed
- gitignore 
    - ignoring that database dump file
- console.rb
    - logic for recurring tasks
- assets/_calendar.scss
    - Updated to add scrollable calendar days for monthly calendar
    - Added daily calendar for greater visibility & tracking
    - Other general layout changes including search relocation
- tasks_controller.rb
    - pagination logic added

## [1.10.13] 2024/12/29
### Bug Fix (validate start_date presence)

### Changed
- models/task.rb
    - ensure due_date is provided before allowing a task to be created (it needs that to display on the calendar)
    
## [1.10.12] 2024/12/2
### Updating how the buttons display

### Changed
- home/index.html.erb, projects, blog_posts, application.scss
    - Button was landing on same line as image in some resolutions, causing display issues.

## [1.10.11] 2024/12/2
### Adding new blog post image

### Added
- blog7.png

## [1.10.10] 2024/12/2
### Contact info fixes

### Changed
- index.heml.erb, application.scss, contact_info.yml
    - Related to what content displays, and where.

## [1.10.9] 2024/11/23
### Gaming Section Updates
#### Been doing changelogs wrong this whole time lol whoops

### Added
- Migration files
    - Related to converting game_notes to json

### Changed
- seeds/games.rb
    - updated gaming info for existing, and upcoming
- games/index.html, show.html
    - Front end stuff, mostly related to displaying json
- Migration
    - Related to converting game_notes to json
- games_controller.rb
    - Auth for any action for now


## [1.9.9] 2024/11/12
### Documentation section

### Added
- Document scaffold
    - Removed most of it lol
- document{#i}-{#i}.png
    - Supporting images for documentation

### Changed
- application.scss
    - for gaming section, front end
    - for documents, front end
- games/index.html.erb
    - updating what displays
- document_controller.rb
    - auth user before access
- nav.html.erb
    - referencing documentation section when authenticated
- seeds/documents.rb
    - dummy data
- documents/index.html.erb, show.html.erb, _document.html.erb
    - Seeing what we want when we want 

## [1.9.8] 2024/11/12
### Gaming section

### Added
- Migration related files For gaming section
- controllers/games_controller.rb
    - With index and show actions
- views/games/index.html.erb, show.html.erb
    - With related info displaying
- models/games.rb
- seeds/games.rb
    - With dummy data
- assets/images/game1-3.png
    - Starter stock images

### Changed
- schema.rb
    - related to migration run
- routes.rb
    - games related routes, alphabetized file
- navbar
    - gaming section added (if logged in for now)


## [1.9.7] 2024/11/11
### Simple Calendar for Task Tracking

### Added 
- _calendar.scss
    - Any custom calendar styling goes here
    - Also referenced this file on application.scss

### Changed
- Gemfile.rb
    - simple_calendar gem added
- application.rb
    - Calendar starts on Sunday
- tasks/index.html.erb
    - Electing to put calendar directly on this page for now

## [1.9.6] 2024/10/27
### Refining Task Manager | Front end fixes

### Changed
-tasks/index.html.erb
    - Removed chatGPT generated front end styling directly on the html.erb file :facepalm:
    - Moved search box and filtering to it's own section altogether

## [1.9.5] 2024/10/27
### Refining Task Manager | Hidden Tasks | Checkboxes for filtering

### Changed
- tasks_controller.rb
    - Added logic to show all tasks, on_hold, completed hidden by default
    - The %w[...] syntax is shorthand in Ruby to create an array of strings, so %w[completed on_hold] is the same as writing ['completed', 'on_hold'].
-tasks/index.html.erb
    - Added checkbox to show all tasks, on hold, completed

## [1.9.4] 2024/10/22
### Refining Task Manager with search, sorting
#### Updating Public Facing Contact Info

### Created
- tasks_helper.rb

### Changed
- contact_info.yml
    - Removed phone number, added linkedin
- tasks_controller.rb
    - Sorting if params are present
- application.scss
    - overdue tasks highlight in red
- task.rb
    - Added support for 'on-hold'
- tasks/index.html.erb
    - Front end support necessary to sort these tasks
    - Basic search form
- tasks_helper.rb

## [1.9.3] 2024/10/22
### Cleanup

### Fixed
- tasks_controller.rb, task.rb, _form.html.erb
    - Updated logic to ensure tasks display
    - Make it such that status displays through the use of mapping.


## [1.9.2] 2024/10/22
### New Featured Project

### Added
- blog6.png
    - To correspond with the update statement made to blog.
    
### Changed
- images/project5.png
    - Updated for the actual project moxicloud-ui
- COMMANDS.md
    - Tracking specific update statements made


## [1.9.1] 2024/10/21
### Launch Time

### Changed
- README.md
    - TMPFI
- .gitignore
    - Guess where all that README info went. It's still public info thanks to this repository :D

## [1.9.0] 2024/10/21
### Sweeping the floor

### Changed
- This file.
    - It looks better when you're looking at it from a 'user' perspective.
- tasks/index.html.erb
    - Insert redneck - **Thems be some fancy new 'new / create' routes boihhhhh, it'd be a shame if the user couldn't.. use 'em**

## [1.8.9] 2024/10/21
### Removing, and then re-adding task_params because chat GPT

### Changed
- Put back task_params method

## [1.8.8] 2024/10/21
### Basically chatGPT told me to remove task_params

### Changed
- Removed task params so that stuff would display on the front end
- As it turns out, those params had nothing to do with it, and chatGPT and I did not quite see eye to eye. We both understand the importance of strict params, especially when it comes to user input. This rubber ducky sucks sometimes.

## [1.8.7] 2024/10/21
### 187 on a motherCRUDDin (lap)TOP

### Added
- new, edit, _form.html.erb

### Changed 
- _navbar.scss, application.scss
    - Updates to color and how stuff displays
- new, edit, _form.html.erb
    - Basic CRUD actions applied
- tasks_controller.rb, index.html.erb, show.html.erb
    - Basic CRUD actions applied
- routes.rb
    - converted to full beans resources for tasks. That's a Jeff Arcuri reference, look him up.

## [1.8.6] 2024/10/20
### Devise Gem | Tasks cannot be accessed at all unless signed in

### Changed
- tasks_controller.rb
    - before_action :authenticate_user!
    - Does not allow access to any action within this controller
- application.scss
    - blog-post didn't have image sizing set appropriately

## [1.8.5] 2024/10/20
### Devise Gem | Tasks hidden unless signed in

### Changed
- _navbar.html.erb
    - <% if user_signed_in? %> for tasks

## [1.8.4] 2024/10/20
### Devise Gem Implemented

### Added
- devise gem - https://github.com/heartcombo/devise
- approve user - https://github.com/heartcombo/devise/wiki/How-To:-Require-admin-to-activate-account-before-sign_in
    - migrations related to both of these, for the user, and to add approved to user

### Changed
- README.md
    - Some documentation
- gemfile, related to devise implementation
- routes.rb, related to devise implementation and user model
- schema.rb, related to devise implementation and user model

## [1.7.4] 2024/10/20
### Refactoring application.scss

### Changed
- application.scss
    - Those can be the same (blog_posts, projects)
    - Updated to make stuff centered in the cards
    - Make videos more taller too

## [1.7.3] 2024/10/20
### Standard 1:1 image sizing for most content

### Changed
- README.md
    - Standard image sizing

## [1.7.2] 2024/10/19
### Front end implementation including new images, API font

### Changed
- README.md
    - Call it what it is

## [1.7.1] 2024/10/19
### Front end implementation including new images, API font

### Changed
- images/{#image}.png
    - Reflecting actual images, not stock photo
- application.scss
    - Referenced 'Roboto' google API font as added to application.html.erb file
- application.html.erb
    - Calling Google API for Roboto font to display

### Fixed
- blog_posts/show.html.erb
    - Updated how the image displays, so that it displays

## [1.6.1] 2024/10/19
### Front end cleanup and organization

### Changed
- application.scss
    - Organized alphabetically
    - Added section info that wasn't previously there. Entire site now stylized enough.
    - Updated some sizing related to flex.
- about/index.html.erb
    - wrapped that biotch in a section that identifies what it is
- contact/index.html.erb
    - wrapped in section tag with appropriate id 'contact'
- tasks/index.html.erb
    - wrapped in section tag with appropriate id 'tasks'


## [1.6.0] 2024/10/19
### Chat GPTify the front end

### Added
- _navbar.scss

### Changed
- application.scss
    - Added stylization generated from chatGPT for each section
- home/index.html.erb
    - Moved sstuff around to make more display better
- about_info.yml
    - removed a typo
- navbar.scss
    - stylization specific to the navbar

## [1.5.0] 2024/10/19
### Implementing Sass (npm install -g sass)

### Added
- application.scss

### Changed
- CHANGELOG.md
    - Had some display issues due to heading tags being incorrectly marked
- application.scss
    - Added very basic styling that was applied originally in css file

### Removed
- application.css

## [1.4.0] 2024/10/19
### Other 'featured' migrations

### Added
- Corresponding schema and migration files related migrations run

### Changed
- home_controller.rb
    - Featured logic was actually here for the home page related to featured projects and videos. Updated that.
- seeds.rb
    - Updated to add 'featured' data

## [1.3.0] 2024/10/19
### Migration for better featured blog post control, database correction

### Added
- Corresponding schema and migration file related to AddFeaturedToBlogPosts migration generated.

### Changed
- blog_posts_controller.rb
    - Removed featured from this controller, shouldn't have been there.
- home_controller.rb
    - Added logic to check if featured = true for featured blog posts.
- seeds.rb
    - Updated to add 'featured' data
- database.yml
    - was referencing aw_development db. Corrected that.

## [1.2.0] 2024/10/18
### Seed refactoring, files contain actual information

### Added
- /db/seeds/{#db_model}
- images/blog{#1-5}
- images/project{#1-5}

### Changed
- seeds.rb
    - Updated to separate out into individual files based on db model
    - Added portfolio and related information to each individual file
- about_info.yml
    - Removed unnecessary info, changed other info
- contact_info.yml
    - Removed unnecessary info, changed other info
- about/index.html.erb
    - Updated to accurately reflect the yml info
- contact/index.html.erb
    - Updated to accurately reflect the yml info
- appliacation_controller.rb
    - Updated to accurately reflect application info
- home/index.html.erb
    - contact to bottom

### Removed
- n/a

## [1.1.0] 2024/10/18
### Addressing some initial concerns, seed file upgrade (continued)

### Added
- n/a

### Changed
- application_controller.rb
    - Added set_app_content
        - This is considered 'hardcoded' content, and should be altered with great care. This content pertains to a section, but can display everywhere and will be referenced multiple times throughout the app.
- about_controller.rb
    - Removed @about_info
- about/index.html.erb
    - Added more clarity as to how to edit info
- seeds.rb
    - Added starter content for each model in the DB, with references to this file as necessary.
- blog_posts/index.html.erb
    - Displaying all blog posts now. 
    - Featured blog_posts remain on the index
- blog_posts_controller.rb
    - @blog_posts = all blog posts
- contact_info.yml
    - Added more clarity as to how to edit info
- projects_controller.rb
    - @projects = all projects
- videos_controller = all videos
    - @videos = all videos

### Removed
- n/a

## [1.0.0] 2024/10/17

### Added
- n/a

### Changed
- README.md
    - Added some basic documentation to remove a section of the site if necessary
- routes.rb
    - Updated routes to alphabetize

### Removed
- n/a

### Fixed
- n/a

### Security 
- n/a

---

## [Unreleased] 2024/10/17
### Task index and show, seed file to populate data

### Added
- 

### Changed
- tasks_controller.rb
    - Added @tasks to index and show actions
- tasks/index.html.erb
    - Populating each task in the DB
- tasks/show.html.erb
    - Populating the task with the associated id in the DB tasks/[id]
- seeds.rb
    - Some dummy data to populate the database with rails db:seed

### Removed
- 

## [Unreleased] 2024/10/17
### Creating an About Section

### Added
- about_info.yml

### Changed
- about_info.yml
    - Added some paragraphs and links.
- about_controller.rb
    - Added @about info to index action (This displays hardcoded about content)

### Removed
- home_controller.rb
    - @about = action to add on it's own controller

## [Unreleased] 2024/10/16
### Displaying content appropriately, timezone update, YAML File

### Added
- contact_info.yml

### Changed
- HomeController
    - Added featured projects, blogposts, videos, and an about section.
- index.html.erb
    - Displays the featured content set in the home controller, and some basic about info.
- some_route/index.html.erb, show.html.erb
    - Displays content as appropriate based on the route (tasks, projects, videos, etc)
- application.css
    - State of the art image sizing applied
- application.rb
    - Set default timezone to Pacific
- contact_controller.rb
    - contact_info.yml referenced
- README.md
    - Referenced this file

## [Unreleased] 2024/10/16
### Initial Site Framework and Navbar

### Added
- BlogPosts, Projects, Tasks, Videos
    - Models
    - Controllers
        - Views
- About, Contact, Home
    - Controller
        - View
- Gemfile
    - bootstrap
    - sassc-rails
- _navbar.html.erb (see changes below)

### Changed
- application.html.erb
    - navbar is rendered here 
- routes.rb
    - Index established (home#index)
    - Other routes set to page#index
- _navbar.html.erb
    - Contains links to each index action, as set in routes