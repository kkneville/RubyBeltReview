class Event < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  validates :name, :city, :st, presence: :true

end
