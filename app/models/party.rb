class Party < ActiveRecord::Base
  belongs_to :user, as: :guest
  belongs_to :event
end
