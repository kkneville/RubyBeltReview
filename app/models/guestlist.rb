class Guestlist < ActiveRecord::Base
  belongs_to :guest, foreign_key: :guest_id, class_name: User
  belongs_to :party, foreign_key: :party_id, class_name: Event
end
