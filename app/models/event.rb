class Event < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :attendances
  has_many :attendings, through: :attendances
  validates :name, :location, :country, presence: :true


end
