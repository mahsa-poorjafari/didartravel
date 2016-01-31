# encoding: UTF-8
class Employment < ActiveRecord::Base
  has_attached_file :person_image, :styles => { :original => "700x650>" , :medium => "450x450>", :small => "300x350>", :toursize => "248x370#", :tumb => "120x70" }
  validates_attachment :person_image, 
    :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"], :message => "فرمت عکس صحیح می باشد." },
    :size => { :in => 0..500.kilobytes , :message => "حجم تصویر بیشتر از  500 کیلوبایت است."}  
end
