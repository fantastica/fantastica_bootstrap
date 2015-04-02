class Website < ActiveRecord::Base
	validates_presence_of :contact_title, :address, :phone_number, :email, 
						  :intro_title, :intro, 
						  :quote, :author_quote,
						  :services_title,
						  :heart, :heart_title,
						  :code, :code_title,
						  :world, :world_title

	attr_accessible :contact_title, :address, :phone_number, :email, 
					:twitter, :linkedin,
					:intro_title, :intro, 
					:quote, :author_quote,
					:services_title,
					:heart, :heart_title,
					:code, :code_title,
					:world, :world_title
end
