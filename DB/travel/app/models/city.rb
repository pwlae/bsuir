class City < ActiveRecord::Base
  belongs_to :country
  has_many :airports
  has_many :cruises
  has_many :citytrips  
end
