module ObjectExample
  class CreateProfile
    def self.call(profile)
      new(profile).call
    end

    def initialize(profile)
      @profile = profile
    end

    # Return an instance of itself:
    def call
      # Simple example:
      return self if profile == 'created successfully'

      nil
    end

    # This is one case where we could have more than one public method:
    def success?
      true
    end

  private
    attr_reader :profile
  end
end