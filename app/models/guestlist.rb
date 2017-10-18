class Guestlist < ActiveRecord::Base
  belongs_to :guest
  belongs_to :party
end
