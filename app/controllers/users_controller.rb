class UsersController < ApplicationController
  def new
  end
  def show
    @user=User.find(params[:id]) #ищим пользователя по ИД
    
  end
end
