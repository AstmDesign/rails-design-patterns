class ServiceController < ApplicationController
  helper_method :create_account_result
  helper_method :boolean_update_profile_result

  def index; end

private

  def create_account_result
    return 'works' if create_account

    'something did not work'
  end

  def boolean_update_profile_result
    return 'it worked' if boolean_update_profile

    'something is broken'
  end

  def create_account
    @create_account ||= CreateAccount.call("create account")
  end

  def boolean_update_profile
    @boolean_update_profile ||= Boolean::UpdateProfile.call("updated successfully")
  end
end
