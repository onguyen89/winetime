class CommentsController < ApplicationController

 def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment])
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end


   def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    
  end

end