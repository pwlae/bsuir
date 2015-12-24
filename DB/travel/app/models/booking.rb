class Booking < ActiveRecord::Base
  belongs_to :city
  belongs_to :price
end
