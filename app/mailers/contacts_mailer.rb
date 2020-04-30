class ContactsMailer < ActionMailer::Base
  default from: "vincethewalker@gmail.com"
  
  def general_message(contact)
    @contact = contact
    mail( :to => "admin@example.com", :subject => "You Have a Message From Your Website")
  end
end
