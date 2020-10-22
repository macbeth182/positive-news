class UsersController < ApplicationController
    
def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @news = user.news.order("created_at DESC").page(params[:page]).per(3)  
end
end