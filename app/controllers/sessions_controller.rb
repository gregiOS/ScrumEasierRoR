class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
  	user = User.find_by(login: params[:login])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to admin_index_url, notice: "Zostales zalogowany"
  	else
  		redirect_to login_url, alert: "Haslo lub login sa niepoprawne"
  	end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to projects_url, notice: "Zostałeś wylogowany"
  end
end
