module Boolean
  class UpdateProfile
    def self.call(profile)
      new(profile).call
    end

    def initialize(profile)
      @profile = profile
    end

    # Return true/false and let your controller handle any errors.
    def call
      # Simple example:
      return true if profile == 'updated successfully'

      false
    end

  private
    attr_reader :profile
  end
end