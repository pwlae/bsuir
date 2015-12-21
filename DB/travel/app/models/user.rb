class User < ActiveRecord::Base
	validates :password, presence: true,
            lenth: { minimum: 8 }
	validates :email, presence: true					
end
