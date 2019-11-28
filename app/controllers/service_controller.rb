class ServiceController < ApplicationController
  helper_method :value_update_account_result
  helper_method :object_create_profile_result
  helper_method :boolean_update_profile_result
  helper_method :create_account_result

  def index; end

private

  def value_update_account_result
    return "profile created, code: #{value_update_account}" if value_update_account

    "value_update_account: something failed"
  end

  def object_create_profile_result
    return 'profile created' if object_create_profile.success?

    'object_create_profile: something failed'
  end

  def create_account_result
    return 'account created' if create_account

    'create_account: something failed'
  end

  def boolean_update_profile_result
    return 'profile updated' if boolean_update_profile

    'boolean_update_profile: something failed'
  end

  def value_update_account
    @value_update_account ||= Value::UpdateAccount.call("updated successfully")
  end

  def object_create_profile
    @object_create_profile ||= ObjectExample::CreateProfile.call("created successfully")
  end

  def boolean_update_profile
    @boolean_update_profile ||= Boolean::UpdateProfile.call("updated successfully")
  end

  def create_account
    @create_account ||= CreateAccount.call("create account")
  end
end
