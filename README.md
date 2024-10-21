## [AW Development](https://www.getawd.com)

### Information and Requirements

General information that does not fall into any specific category quite yet:
  - Image sizing
    - 1:1
      - blog_posts
      - projects
  - Devise - Straightforward implementation for the most part.
    - User must be approved before they can do anything

## Database

The application uses a PostgreSQL database with the following tables:

### blog_posts
Stores blog entries with the following fields:
- **title**: The title of the blog post.
- **body**: The main content of the blog post.
- **description**: A brief summary or excerpt of the blog post.
- **image**: An optional image associated with the blog post.

### projects
Holds information about various projects with the following fields:
- **title**: The name of the project.
- **description**: A detailed description of the project.
- **image**: An optional image representing the project.
- **url**: A link to the project's website or relevant page.

### tasks
Contains tasks and their details with the following fields:
- **task_name**: The name of the task.
- **description**: A description of what the task entails.
- **status**: The current status of the task (e.g., pending, completed).
- **priority**: The priority level of the task (e.g., low, medium, high).
- **start_date**: The date the task was started.
- **due_date**: The date the task is expected to be completed.
- **completion_date**: The date the task was completed.
- **assigned_to**: The individual responsible for the task.
- **estimated_time**: The estimated time to complete the task.
- **actual_time**: The actual time taken to complete the task.

### videos
Stores information about video content with the following fields:
- **title**: The title of the video.
- **description**: A brief description of the video.
- **youtube_id**: The embed code for the video on YouTube.
    - go to the YouTube video or playlist you want to embed. Click SHARE . From the list of Share options, click Embed. From the box that appears, copy the section of the URL within that HTML box that looks like an embed code, IDK.
    
## Docs

### Removing a Section

To remove a section (the Videos section will be shown here) from the app, follow these steps:

1. **Delete the Videos Controller and Views**
    - Run the command:
      ```bash
      rails destroy controller Videos
      ```

2. **Remove the Video Model**
    - Run the command:
      ```bash
      rails destroy model Video
      ```
    - Create a migration to drop the videos table:
      ```bash
      rails generate migration DropVideosTable
      ```
    - In the generated migration file (found in `db/migrate/{#correspondingmigrationfilegenerated}`), add the following line to the `def up` method:
      ```ruby
      drop_table :videos
      ```
    - Run the migration:
      ```bash
      rails db:migrate
      ```

3. **Remove the Route**
    - Open `config/routes.rb` and remove or comment out:
      ```ruby
      resources :videos, only: [:index, :show]
      ```

4. **Remove the Navigation**
    - Open `views/layouts/_nav.html.erb` and remove or comment out the line:
      ```erb
      <li><%= link_to 'Videos', videos_path %></li>
      ```

---

For detailed updates and changes, refer to the [Changelog](./CHANGELOG.md)