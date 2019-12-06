class SaladPresenter < SimpleDelegator
  def ceasar_salad(light: true)
    if light
      "My ceasar salad contains a small amount of #{greens} only."
    else
      "My ceasar salad contains lots of #{greens} and #{tomatoes}."
    end
  end
end
