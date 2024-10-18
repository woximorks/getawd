class ApplicationController < ActionController::Base
    before_action :set_app_content
  
    private
  
    def set_app_content
        @about_app_level = "AW Development - Rails applications and API integrations."
        @contact_app_level = "We can help with your next development project!"
    end
  end