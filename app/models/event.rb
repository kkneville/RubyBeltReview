require 'date'

class Event < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :guestlists, foreign_key: :party_id
  has_many :guests, through: :guestlists
  validates :name, :location, :country, presence: :true
  validates :date, presence: :true

  def future_dated
  	if date.present? && date < Datetime.new
  		errors.add(:date, "must be in the future.")
  	end
  end		

end
