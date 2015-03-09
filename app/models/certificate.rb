# encoding: UTF-8
class Certificate < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  has_attached_file :image, :styles => { :original => "700x650>" , :medium => "450x450>", :small => "100x150>", :toursize => "248x370#", :tumb => "120x70" }
  validates_attachment :image, 
    :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"], :message => "فرمت عکس صحیح می باشد." },
    :size => { :in => 0..100.kilobytes , :message => "حجم تصویر بیشتر از 100 کیلوبایت است."}
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
