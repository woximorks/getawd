class ApplicationController < ActionController::Base
    before_action :set_app_content
  
    private
  
    def set_app_content
        @about_app_level = "Web App Development | API Integrations | Database Management"
        @about_sub_app_level = "Featuring some of the most popular web development related projects we've created or contributed to!"
    end

    def paginate(scope, per_page: 25)
        page = (params[:page] || 1).to_i
        total_pages = (scope.count / per_page.to_f).ceil
        [scope.offset((page - 1) * per_page).limit(per_page), page, total_pages]
    end

end