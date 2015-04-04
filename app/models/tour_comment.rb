# encoding: UTF-8
class TourComment < ActiveRecord::Base
  belongs_to :tour, touch: true
end
