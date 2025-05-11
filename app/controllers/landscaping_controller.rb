class LandscapingController < ApplicationController
  def index
    @LandscapingJobs = LandscapingJob.all
  end
end
