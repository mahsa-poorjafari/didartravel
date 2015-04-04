class ClassHotel < ActiveRecord::Base
  has_many :hotels, touch: true
end
