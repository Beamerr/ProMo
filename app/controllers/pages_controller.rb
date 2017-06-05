class PagesController < ApplicationController
   
 
  def all_except(user)
    where.not(id: user)
  end

  def home
  	@documents = Document.order('created_at')

  	@document = Document.new

  	if user_signed_in?
  	  
      @users = User.find_by(params[:id])
      @conversations = Conversation.involving(current_user)
	   
    end
  end 
end
