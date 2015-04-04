class Locationtour < ActiveRecord::Base
  belongs_to :tour, touch: true
  has_and_belongs_to_many :hotels
  #has_and_belongs_to_many :cities
end
