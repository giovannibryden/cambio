class StaticController < ApplicationController
	def landing
		@email = Email.new
	end

	def new
		@email = Email.new
	end
	
	def create
		@email = Email.new(email_params)
		if @email.save
			flash[:notice] = 'Success!'
		else
			flash[:notice] = 'Something went wrong.'
			render 'root'
		end
	end
end

private

	def email_params
		params.require(:email).permit(:email)
	end


