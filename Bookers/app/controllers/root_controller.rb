class RootController < ApplicationController
 def top
 	
 end

 def books
 	@post=Post.new
 	@posts = Post.all

 end

 def    create
        # ストロングパラメーターを使用
         post = Post.new(post_params)
        # DBへ保存する
         post.save
        # トップ画面へリダイレクト
        redirect_to '/top'

 	
 end
 
 private
    def post_params
        params.require(:post).permit(:title, :body)
    end

end


