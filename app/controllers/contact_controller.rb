class ContactController < ApplicationController
  def new; end

  def create
    return redirect_to root_url, flash: { success: "Email Sent!" } if contact_form.save

    flash.now[:success] = "Please fill out the form"
    render :new
  end

private

  def contact_form
    @contact_form ||= ContactForm.new(address: address)
  end

  def address
    params[:address]
  end
end