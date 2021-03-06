# encoding: UTF-8
class TourGroup < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  has_many :tours
  def title
    if I18n.locale == :ar
      self.read_attribute("title_ar")
    elsif I18n.locale == :en
      self.read_attribute("title_en")
    else
      self.read_attribute("title_fa")
    end    
  end
end
