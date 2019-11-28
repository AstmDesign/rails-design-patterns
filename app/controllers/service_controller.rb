class ServiceController < ApplicationController
  helper_method :account_test

  def index; end

private

  def account_test
      return 'works' if account

      'something did not work'
  end

  def account
    @account ||= CreateAccount.call("account test")
  end
end
