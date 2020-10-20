class CommentsController < ApplicationController

def create
comment = Comment.create(text: comment_params[:text], news_id: comment_params[:news_id], user_id: current_user.id)
redirect_to "/news/#{comment.news.id}"
end

private
def comment_params
params.permit(:text,:news_id)
end
end