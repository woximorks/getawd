class ApplicationController < ActionController::Base
    before_action :set_app_content
  
    private
  
    def set_app_content
        @about_app_level = "Web App Development | API Integrations | Database Management"
        @contact_app_level = "AW Development - A site showcasing some development projects we've created or contributed to!"
    end
  end