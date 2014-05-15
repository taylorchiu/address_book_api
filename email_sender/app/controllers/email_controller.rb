class EmailController < ApplicationController

  def about
  end


###### CREATE METHOD IN OMDBAPI EXAMPLE #######
#   def create
#   @movie = Movie.new(movie_params)

#   respond_to do |format|
#     if @movie.save
#       format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
#       format.json { render json: @movie, status: :created }
#     else
#       format.html { render action: 'new' }
#       format.json { render json: @movie.errors, status: :unprocessable_entity }
#     end
#   end
# end

  def email
  	render nothing: true, status: 200
 #    @email = Email.new(email_params)
 # binding.pry
 #    # respond_to do |format|
 #    # 	if @email.save
 #    # 		format.html { redirect_to @email, notice: "Email sent!" }
 #    # 		format.json { render json: @email, status: :created }
 #    # 	else
 #    # 		format.html { render action: 'email' }
 #    # 		format.json { render json: @email.errors, status: :unprocessable_entity }
 #    # 	end
 #    # end
  end

  private
  	def email_params
  		params.require(:email).permit(:subject, :body)
  	end
end
