class User < ActiveRecord::Base
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]+)\z/i
  has_secure_password
  validates :firstname, :lastname, :email, presence: :true
  validates :email, uniqueness: :true, format: {with: email_regex}
  before_save :downcase_email
  has_many :events
  has_many :guestlists, foreign_key: :guest_id
  has_many :parties, through: :guestlists

  def downcase_email
  	self.email.downcase!
  end 

  def update_user(params)
    user = User.find(current_user.id)
    user.firstname = params[:firstname]
    user.lastname = params[:lastname]
    user.email = params[:email]
    user.location = params[:location]
    user.country = params[:country]
    user.save
    return user
  end 
  
end
