require 'date'

class Event < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :guestlists, foreign_key: :party_id
  has_many :guests, through: :guestlists
  validates :name, :location, :country, presence: :true
  validate :future_dates_only

  def future_dates_only
    if self.date == nil || self.date <= Date.today
      errors.add("The event date must be in the future")
    end
  end	

end
