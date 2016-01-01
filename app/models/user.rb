# encoding: UTF-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :role
  def is_admin?
    #self.roles.collect(&:title).include?("Admin")
    #self.roles.collect(&:id).include?(1)
    #self.role_id = 1 
    if self.role_id == 1 
      return true
    end
  end
  def is_user?   
    if self.role_id != 1 || self.role_id == nil
      return true
    end
  end
  
end
