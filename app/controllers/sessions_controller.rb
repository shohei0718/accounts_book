class SessionsController < ApplicationController
  
  def new
  end

  def create
    @mail = params[:session][:email]
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to top_index_path
    else
      flash[:alert] = 'メールアドレスかパスワードに誤りがあります。'
      render action: 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
