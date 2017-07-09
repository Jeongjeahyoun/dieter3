class HomeController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
  end
  
  def write
    
  end
  
  
  def main

  end
  
  def write_ok
    @one_post = Post.new
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.writer = params[:writer]
    @one_post.hit = 0
    
    
    @one_post.save
    redirect_to "/home/list"
  end
  
  def list
    @all_post = Post.all
    
  end
  
  def detail
    @one_post = Post.find(params[:id])
    @one_post.hit += 1
    @one_post.save


  end
  
  def delete 
    @one_post = Post.find(params[:id])
    @one_post.destroy
    
    redirect_to '/home/list'
  end
  
  def update
    @one_post = Post.find(params[:id])
  end
  
  def update_ok
    @one_post = Post.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.writer = params[:writer]
    @one_post.save
    
    redirect_to '/home/list'
  end
  
  def reply_ok 
    @reply = Comment.new
    @reply.reply_writer = params[:reply_writer]
    @reply.reply = params[:reply]
    @reply.post_id = params[:post_id]
    
    if @reply.save
      redirect_to :back
    else  
      render :text => @reply.errors.messages[:reply][0]
    end
  
  end
  
  def reply_del
    @reply = Comment.find(params[:id])
    @reply.destroy
    
    redirect_to :back
  end
  
end
