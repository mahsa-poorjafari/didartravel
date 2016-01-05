# encoding: UTF-8
class VisaForm < ActiveRecord::Base
  has_many :passengers
  has_many :hosts  
  accepts_nested_attributes_for :hosts, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :passengers, reject_if: :all_blank, allow_destroy: true
  validates :I_agree, :presence => {:message => 'Agree the Visa process agreement'}
  
  
end
