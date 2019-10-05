module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
   #ブラウザからのHTTPリクエストのset-Cookieヘッダーに含まれるsessionのuser_idの値と一致するUserオブジェクトを抽出
   @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    #ログイン中＝current_userがnilでない状態
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id) #セッションからuser_idを削除
    @current_user = nil
  end
end
