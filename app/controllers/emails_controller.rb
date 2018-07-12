class EmailsController < ApplicationController

	def new 
		@email = Email.new
	end

	def create
		@email = Email.new(email_params)
		if @email.save
			flash[:notice] = 'Success!'
			puts ">>>>>>>>>>>>>> SAVED"
		else
			flash[:notice] = 'Something went wrong.'
			puts ">>>>>>>>>>>>>> NOT SAVED"
		end
	end
end

private

	def email_params
		params.require(:email).permit(:email)
	end
