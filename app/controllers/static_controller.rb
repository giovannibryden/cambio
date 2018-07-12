class StaticController < ApplicationController
	def landing
		@email = Email.new
	end
end