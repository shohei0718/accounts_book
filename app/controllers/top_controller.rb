class TopController < ApplicationController
  before_action :login_check
  def index
  end

  private
  
  def login_check
    unless logged_in?
      flash[:alert] = 'ログインしてください'
      redirect_to login_path
    end
  end
end
