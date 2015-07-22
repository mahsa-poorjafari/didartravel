# encoding: UTF-8
class Visa < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  belongs_to :visa_type
  belongs_to :country
  validates :title_en, :title_fa, :title_ar, :visa_type_id, :presence => {:message => 'فیلدهای ضروری را پر کنید'}
  validates :title_fa, :title_en, :title_ar, :uniqueness => {:message => 'عنوان تکراری است'}
  def title
    if I18n.locale == :ar
      self.read_attribute("title_ar")
    elsif I18n.locale == :en
      self.read_attribute("title_en")
    else
      self.read_attribute("title_fa")
    end    
  end
  
  def text
    if I18n.locale == :ar
      self.read_attribute("text_ar")
    elsif I18n.locale == :en
      self.read_attribute("text_en")
    else
      self.read_attribute("text_fa")
    end    
  end
end
