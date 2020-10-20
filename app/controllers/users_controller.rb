class UsersController < ApplicationController
    
def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @news = user.news.order("created_at DESC")     
end
end