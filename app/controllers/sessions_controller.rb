class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
  	user = User.find_by(login: params[:login])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
      if user.role == 1
  		redirect_to admin_index_url, notice: "You are loged in"
    elsif user.role == 2
      redirect_to product_owner_path, notice: "You are loged in"
      end
  	else
  		redirect_to login_url, alert: "Incorrect password or login"
  	end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to projects_url, notice: "You were loged out"
  end
end
