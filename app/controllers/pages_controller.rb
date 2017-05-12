class PagesController < ApplicationController
  before_action :authenticate_user!
  
  def home
  	@users = User.all
    @conversations = Conversation.involving(current_user)
  end
end
