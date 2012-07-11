class HomeController < ApplicationController
	def index
    @tablets = Tablet.all
	end
end
