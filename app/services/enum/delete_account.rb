module Enum
  class DeleteAccount

    POSSIBLE_VALUES = [
      SUCCESS = :success,
      MISSING = :missing,
      UNKNOWN = :unknown
    ]

    def self.call(account)
      new(account).call
    end

    def initialize(account)
      @account = account
    end

    # Return enums:
    def call
      return SUCCESS if account == 'deleted successfully'
      return MISSING if account == 'data missing'

      UNKNOWN
    end

  private

    attr_reader :account
  end
end