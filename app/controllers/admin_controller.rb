class AdminController < ApplicationController
  def index
  end
 
 def index
    @projects = Project.all;
    @users = User.all
  end
end
