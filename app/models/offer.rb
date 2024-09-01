class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :title, :description, :price, :address, :places, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def next
    Offer.where("id > ?", id).order(:id).first
  end

  def prev
    Offer.where("id < ?", id).order(:id).last
  end
end
