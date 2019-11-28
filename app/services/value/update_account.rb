module Value
  class UpdateAccount
    def self.call(account)
      new(account).call
    end

    def initialize(account)
      @account = account
    end

    # Return a value
    def call
      return false unless api_data

      api_data
    end

  private

    def api_data
      return false if account != 'updated successfully'

      "api request data"
    end

    attr_reader :account
  end
end