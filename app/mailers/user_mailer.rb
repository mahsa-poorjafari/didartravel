# encoding: UTF-8
class UserMailer < ActionMailer::Base
  def send_user_msg
    @message = Message.last
    mail(:to =>  User.all.collect(&:email).join(','), :subject => "Didartravel.ir پیام ارسالی توسط کاربر", :from => "info@didartravel.ir")
  end  
  def customer_register_done
    @customer = Customer.last
    mail(:to =>  @customer.email, :subject => "Didartravel.ir", :from => "info@didartravel.ir")
  end
  def send_tour_info_to_newsletter(tour)    
    @tour = tour
    mail(:to =>  Customer.all.collect(&:email).join(','), :subject => "Didartravel.ir اطلاعات تور", :from => "info@didartravel.ir")
  end
  def email_to_all_customer(subject, text)
    @text = text
    @subject = subject
    mail(:to =>  Customer.all.collect(&:email).join(','), :subject => @subject, :from => "info@didartravel.ir")    
  end
  def send_friend_link
    @link = SendLink.last
    mail(:to =>  @link.receiver_email, :subject => @link.subject, :from => @link.sender_email)
  end
end
