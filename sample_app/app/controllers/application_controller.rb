class ApplicationController < ActionController::Base


	private

	def post_params
		params.require(:post).permit(:title, :body)
end
end