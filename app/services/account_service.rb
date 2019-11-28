class AccountService
  def self.call(account)
    new(account).call
  end

  def initialize(account)
    @account = account
  end

  # Return true/false and let your controller handle any errors.
  def call
    if account == 'account'
      return true
    end
    false
  end

private

  attr_reader :account
end
