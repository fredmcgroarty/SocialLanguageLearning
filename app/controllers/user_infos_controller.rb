class UserInfosController < ApplicationController
  def new
    @user_info = UserInfo.new
  end

  def show
    @user_info = UserInfo.find params[:id]
  end

  def create
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end
end
