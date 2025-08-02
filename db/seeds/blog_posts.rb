BlogPost.create!(
  title: "Rails Site is Live",
  body: "After diving into the basics of web development with HTML, CSS, and JavaScript, I realized it was time to take the next step and choose a framework to build more dynamic, full-featured applications. After researching several options, I decided that Ruby on Rails was the perfect fit for where I am in my learning journey. Its convention-over-configuration approach, along with its well-documented ecosystem and supportive community, felt like the right environment for me to expand my skills. Over the past 6 to 8 months, I've dedicated myself to learning Rails, experimenting with its powerful tools, and applying key development principles like RESTful architecture, MVC patterns, and database management with PostgreSQL. While it’s been a challenging process at times, I can see myself improving with each project, becoming more comfortable with both the Rails framework and full-stack development in general. It’s exciting to feel like I’m finally gaining momentum and getting closer to my goal of building polished, efficient web applications.",
  description: "This site is now hosted on Rails as a Heroku app, and showcases some of my favorite and ongoing web development projects!",
  image: "logo.png",
  featured: true
)

BlogPost.create!(
  title: "PostgreSQL",
  body: "<p>Part of deploying my Rails application on Heroku meant replacing the default SQLite3 database—while it’s lightweight and great for development, it’s not supported in Heroku’s production environment. Instead, I switched to PostgreSQL, which is one of the most robust and widely-used open-source database management systems. I was excited about the change because it gave me the chance to get hands-on experience with a more powerful DBMS in a real-world scenario.</p>
<p>In the process of learning PostgreSQL, I made a few mistakes along the way, like accidentally dropping a table before fully understanding the consequences—trust me, that can cause a lot of issues! Definitely a '0/10, do not recommend' moment. But through those challenges, I learned a lot, including how to perform regular backups using pg_dump to ensure my data is safe. I’ve also become more comfortable with the command line and PostgreSQL’s interactive shell (psql), discovering useful commands for database management. It’s been a great learning experience, and I feel like I’m gaining valuable skills that will be useful in any real-world development setting.</p>",
  description: "Connecting the Rails app to PostgreSQL, and some basic information that was useful to me getting started.",
  image: "logo.png",
  featured: true
)

BlogPost.create!(
  title: "Project Spotlight - Beard Bros Dumpsters",
  body: "Beard Bros Dumpsters, LLC, based in Pennsylvania, provides a unique and essential service for both residents and businesses—dumpster delivery on demand. To help showcase this growing business and streamline their scheduling process, we developed a custom Rails application. The site is designed to offer an easy-to-navigate platform for customers to book services while also handling the company’s internal tasks efficiently. We leveraged powerful tools like the Devise gem for user authentication, Bootstrap for a responsive and visually appealing interface, and Simple Calendar to simplify scheduling and appointment management. With these features in place, the app not only promotes the business but also enhances operational efficiency. Visit beardbrosdumpsters.com to explore the service and see the app in action!",
  description: "This project demonstrated how easy it can be to implement Gems like Simple Calendar and Devise for user authentication and management, alongside calendar interaction!",
  image: "logo.png",
  featured: false
)

BlogPost.create!(
  title: "ChatGPT - Exploring the power of AI",
  body: "ChatGPT isn’t just about messaging—it's amazing to see how people are using the same models for image manipulation, too. I’ve been experimenting with this myself and have generated some great-looking images to use while building applications and websites. By using retro Toyota trucks as a test subject, I quickly realized just how powerful and versatile this tool can be. If you want to see for yourself, head over to chatgpt.com and check out the ‘image generator.’ It’s become my go-to tool for projects like this, and I think you’ll be impressed with what it can do!",
  description: "I've spent the past few days engaging with AI about two of my favorite topics—programming and Toyota trucks. The outcome has been pretty exciting! While the AI isn't perfect, it helped me create some pretty impressive images of my favorite Toyota trucks. It’s been a fun experiment blending technology with my automotive passion. Take a look at the results and see what you think!",
  image: "logo.png",
  featured: false
)

BlogPost.create!(
  title: "Changelogs",
  body: "Using changelogs is essential for maintaining clarity in a project's development process. They provide a comprehensive overview of updates, features, and bug fixes, making it easier for team members and stakeholders to understand the project's evolution. Changelogs enhance collaboration by allowing everyone involved to stay informed about what has changed and when, which is especially crucial in agile environments. Moreover, they serve as a valuable reference for troubleshooting and debugging, as past changes can often reveal the origins of new issues. By implementing changelogs, I can ensure a more organized workflow, improve communication, and ultimately contribute to the project's overall success. This practice fosters accountability and encourages better planning and prioritization of future work, leading to a more efficient development process.",
  description: "I recently implemented changelogs for my project to create a clear and comprehensive record of all updates and modifications. Going forward, I'll be using these changelogs to systematically track every change, big or small. This not only helps maintain transparency but also enhances project management by providing an organized history of progress. It’s a great way to ensure that everyone involved stays informed and up to date with the evolution of the project.",
  image: "logo.png",
  featured: true
)