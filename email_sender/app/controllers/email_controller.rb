class EmailController < ApplicationController

  def about
  end

  def email
 		# SiteMailer.status_email(email[:email], email[:subject], email[:body]).deliver
 		new_email  = email_params
 		binding.pry
 		EmailWorker.perform_async(new_email[:email], new_email[:subject], new_email[:body])
 		render nothing: true, status: 200
  end

  private
  	def email_params
  		params.require(:email).permit(:subject, :body, :email)
  	end
end
