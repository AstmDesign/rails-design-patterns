class ComponentController < ApplicationController
  helper_method :grade

  def index; end

private

  def grade
    Grade.new
  end
end
