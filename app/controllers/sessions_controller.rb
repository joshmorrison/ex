class SessionsController < ApplicationController
  
	def new
	end

	def create
		user = User.authenticate(params[:userID], params[:password])
		if user
			session[:userID] = params[:userID]
			redirect_to home_index_path
    else
      redirect_to new_session_path
		end
  end

  def logout
    session[:userID] = nil
    redirect_to home_index_path, :notice => "Logged Out"    
  end

  def destroy
  end

end
