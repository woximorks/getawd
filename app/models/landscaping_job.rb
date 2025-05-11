class LandscapingJob < ApplicationRecord
    def index
        @LandscapingJobs = LandscapingJob.all
      end
end
