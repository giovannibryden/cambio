class EmailsController < ApplicationController

	def new 
		@email = Email.new
	end

	def create
		@email = Email.new(email_params)
		if @email.save
			flash[:success] = 'Success!'
			puts ">>>>>>>>>>>>>> SAVED"
			redirect_to root_path
		else
			flash[:error] = 'Something went wrong.'
			puts ">>>>>>>>>>>>>> NOT SAVED"
			redirect_to root_path
		end
	end
end

private

	def email_params
		params.require(:email).permit(:email)
	end
