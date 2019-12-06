class TravelDecorator < SimpleDelegator
  def travel_speed_for_elevation(wind: 5)
    # Completely made up:
    speed * 3.14 * wind
  end
end
