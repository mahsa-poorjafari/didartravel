# encoding: UTF-8
class Host < ActiveRecord::Base
  belongs_to :visa_forms
  has_attached_file :id_card_copy, :styles => { :original => "700x650>" , :medium => "450x450>", :small => "300x350>", :toursize => "248x370#", :tumb => "120x70" }
  validates_attachment :id_card_copy, 
    :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"], :message => "فرمت عکس صحیح می باشد." },
    :size => { :in => 0..500.kilobytes , :message => "حجم تصویر بیشتر از  500 کیلوبایت است."}  
end
