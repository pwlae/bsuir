class User < ActiveRecord::Base
	has_many :articles
	has_many :bookings
	validates :password, presence: true,
            length: { minimum: 8 }
	validates :email, presence: true
end
