class ContactMailer < ActionMailer::Base
	default to: "loomis_international@yahoo.com"

	def contact_email(name, email, body)
		@name = name
		@email = email
		@body = body

		mail(from: email, subject: "Contact Form Submitted!")
	end
end