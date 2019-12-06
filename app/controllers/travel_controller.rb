class TravelController < ApplicationController
  helper_method :travel_speed_for_elevation

  def index; end

private

  def travel_speed_for_elevation
    TravelDecorator.new(Travel.new).travel_speed_for_elevation
  end
end
