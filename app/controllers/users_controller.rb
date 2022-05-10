class UsersController < ApplicationController
	def show
		 sign_out_and_redirect(current_user)
	end
end
