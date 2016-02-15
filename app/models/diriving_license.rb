# encoding: UTF-8
class DirivingLicense < ActiveRecord::Base
  extend FriendlyId  
  has_attached_file :image, :styles => { :original => "700x650>" , :medium => "450x450>", :small => "300x350>", :toursize => "248x370#", :tumb => "120x70" }
  validates_attachment :image, 
    :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"], :message => "فرمت عکس صحیح می باشد." },
    :size => { :in => 0..500.kilobytes , :message => "حجم تصویر بیشتر از  500 کیلوبایت است."}  
  friendly_id :title_fa
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
