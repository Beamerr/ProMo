class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def users
  	@users = User.find(params[:id])
  end
end
