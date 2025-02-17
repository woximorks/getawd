class ApplicationController < ActionController::Base
    before_action :set_app_content
  
    private
  
    def set_app_content
        @about_app_level = "Web App Development | API Integrations | Database Management"
        @about_sub_app_level = "Featuring some of the most popular web development related projects we've created or contributed to!"
    end
  end