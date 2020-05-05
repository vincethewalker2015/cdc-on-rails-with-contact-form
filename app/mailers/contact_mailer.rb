class ContactMailer < ActionMailer::Base
  default to: 'vincent@vincethewalker.com'

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(from: email, subject: 'CDC Global get contact Message')
  end

end