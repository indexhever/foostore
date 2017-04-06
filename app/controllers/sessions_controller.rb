class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
	if user && user.authenticate(params[:session][:password])
		# Log the user in and redirect to the home page.
		log_in user
		redirect_to root_path
	else
		# Create an error message.
		flash.now[:danger] = 'Invalid email/password combination'
		render 'new'
	end
  end

  def destroy
  	log_out
	redirect_to root_url
  end

  # set current website language
  def localize
  	define_locale params[:language]
  	redirect_to :back
  end
end
