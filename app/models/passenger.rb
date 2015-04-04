# encoding: UTF-8
class Passenger < ActiveRecord::Base
  belongs_to :visa_forms, touch: true
end
