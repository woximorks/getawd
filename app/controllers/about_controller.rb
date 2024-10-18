class AboutController < ApplicationController
  def index
    @about_info = YAML.load_file(Rails.root.join('config', 'about_info.yml'))
  end
end
