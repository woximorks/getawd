class ContactController < ApplicationController
  def index
    @contact_info = YAML.load_file(Rails.root.join('config', 'contact_info.yml'))
  end
end