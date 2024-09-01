class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  validates :date_start, presence: true
  validates :date_end, presence: true
  validates :number_of_persons, presence: true
  validates :total_prices, presence: true

  before_validation :write_total_price

  def write_total_price
    return unless date_end && date_start && offer.price

    days = (date_end - date_start).to_i
    total = number_of_persons * days * offer.price
    self.total_prices = total
  end
end
