class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def index
  	render layout: 'splash'
  end

  def page 
  	render "/pages/#{params[:page]}"
  end	

  def contact
  	if params[:email]
  		email = params[:email]
  		name = params[:name]
  		message = params[:message]
  		# Mail.deliver do
  		#   from email
  		#   to 'aprowe@ucsc.edu'
  		#   subject "Message from #{name}"
  		#   body message
  		# end

  		@submitted = true
  	end

  end

end
