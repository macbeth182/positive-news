class NewsController < ApplicationController

before_action :move_to_index, except: [:index,:show]

def show
@news = News.find(params[:id])
@comments = @news.comments.includes(:user)


end

def index
@news = News.includes(:user).order("created_at DESC").page(params[:page]).per(3)
end

def new
end

def create
News.create(title: news_params[:title], article: news_params[:article],  user_id: current_user.id)
end

def destroy
news = News.find(params[:id])
if news.user_id == current_user.id
news.destroy
end
end

def edit
@news = News.find(params[:id])    
end

def update
news = News.find(params[:id])
if news.user_id == current_user.id
news.update(news_params)
end
end


private 

def news_params
params.permit(:title,:article,)
end

def move_to_index
redirect_to action: :index unless user_signed_in?
end
end
