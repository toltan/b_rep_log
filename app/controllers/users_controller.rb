class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:user][:email], password: params[:user][:password])
    if user
      session[:user_id] = user.id
      flash[:success] = "ログイン成功"
      redirect_to user_path(user)
    else
      flash[:danger] = "ログインに失敗しました。"
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    session[:user_id] = nil
    flash[:info] = "ログアウトしました。"
    redirect_to root_path
  end
end
