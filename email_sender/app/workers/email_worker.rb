class EmailWorker
	include Sidekiq::Worker

	def perform(email, subject, body)
		puts "*"*50
		puts "sending email!!"
		p email
		# run the code that we've moved from def create in the email_controller
 		puts SiteMailer.status_email(email, subject, body).deliver
	end

	# private
 #  	def email_params
 #  		params.require(:email).permit(:subject, :body, :email)
 #  	end
end
