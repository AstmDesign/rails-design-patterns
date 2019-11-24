class ContactForm
  include ActiveModel::Model

  attr_accessor :address

  validates :address, presence: true

  def save
    return false if invalid?

    true
  end
end