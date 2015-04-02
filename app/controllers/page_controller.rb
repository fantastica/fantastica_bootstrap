class PageController < ApplicationController
	def index
		@website = Website.first
	end
end
