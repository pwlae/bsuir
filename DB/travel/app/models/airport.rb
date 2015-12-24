class Airport < ActiveRecord::Base
  belongs_to :city
  has_many :flights
end
