# encoding: UTF-8
class Role < ActiveRecord::Base
  
  validates :title, :uniqueness => {:message => 'عنوان تکراری است'}
  validates :title, :presence => {:message => 'عنوان را بنویسید'}
  has_and_belongs_to_many :users
  
end
