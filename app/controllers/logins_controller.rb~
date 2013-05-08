class LoginsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(login_params)

    if @user.registered?
      session[:login] = @user.id
      redirect_to tweets_path
    else
      render action: 'new'
    end
  end

  def destroy
    @user = User.new(id: params[:id])
    session[:login] = nil
    redirect_to action: 'new'
  end

  private
  def login_params
    params.require(:user).permit(:id, :name)
  end

  def roquire_login
    if session[:login]
      return
    else
      redirect_to action: 'new_login_path'
    end
  end
end
