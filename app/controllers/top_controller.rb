class TopController < ApplicationController
  def main
    if current_user
      render 'main'
    else
      render 'login'
    end
  end
  
  def login
    user=User.find_by(uid: params[:uid])
    if user
      login_password = BCrypt::Password.new(user.pass)
      if login_password == params[:pass]
        current_user = user.uid
        redirect_to top_main_path
      else
        render 'login'
      end
    else
      render 'login'
    end
  end
  
  def logout
    session.delete(:uid)
    redirect_to top_main_path
  end
end
