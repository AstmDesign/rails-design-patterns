class PresenterController < ApplicationController
  helper_method :ceasar_salad
  helper_method :light_ceasar_salad

  def index; end

private

  def light_ceasar_salad
    SaladPresenter.new(salad).ceasar_salad
  end

  def ceasar_salad
    SaladPresenter.new(salad).ceasar_salad(light: false)
  end

  def salad
    @salad ||= Salad.new
  end
end
