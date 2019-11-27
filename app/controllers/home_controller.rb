class HomeController < ApplicationController
  # Value Object in Use
  helper_method :name

  def index; end

  private def name
    @name ||= Name.new("John Smith")
  end
end