class Event < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  validates :name, :location, :country, presence: :true

end
