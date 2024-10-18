class ApplicationController < ActionController::Base
    before_action :set_app_content
  
    private
  
    def set_app_content
        @about_app_level = "This is any hardcoded about section content, modified in the application_controller directly."
        @contact_app_level = "This is any hardcoded about section content, modified in the application_controller directly."
    end
  end