class HomeController < ApplicationController
  def index
    #if !user_signed_in?
      #redirect_to :new_user_session
    #end
    @users = User.all
    @images = Image.all
    @resource = @resource ||= User.new
    if user_signed_in?
      render "discover.html.haml"
    end
    @users = User.all
    @images = Image.all
  end

  def new
    respond_to do |format|
      format.html { render :layout => "sessions" }
    end
  end

end
