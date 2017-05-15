class PagesController < ApplicationController
  
  def home
  	if user_signed_in?
  	  if !@conversations.nil?
	      @users = User.all
	      @conversations = Conversation.involving(current_user)
      end
    end
  end 
end
