class CommentsController < ApplicationController
        def create
                @post = Post.find(params[:post_id])
                # @comment = @post.comments.create!(params[:comment])
                # @comment = @post.comments.create!(comment_params)
                @comment = @post.comments.create(params[:comment].permit(:commenter, :body))

                redirect_to @post
        end
end