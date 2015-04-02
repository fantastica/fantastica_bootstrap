class CreateWebsites < ActiveRecord::Migration
	def change
		create_table :websites do |t|
			t.string :intro_title, :null => false
			t.text :intro, :null => false

			t.string :services_title, :null => false
			t.string :heart_title, :null => false
			t.text :heart, :null => false
			t.string :code_title, :null => false
			t.text :code, :null => false
			t.string :world_title, :null => false
			t.text :world, :null => false

			t.string :quote, :null => false
			t.string :author_quote, :null => false

			t.string :team_title, :null => false

			t.string :contact_title, :null => false
			t.string :address, :null => false
			t.string :phone_number, :null => false
			t.string :email, :null => false
			t.string :twitter, :null => true
			t.string :linkedin, :null => true

			t.timestamps
		end

		contact = Website.new
		contact.contact_title = 'Deixe um recado'
		contact.address = "CLN 309 Bl. B Sl. 106, Asa Norte, Brasília/DF"
		contact.phone_number = "+55 84 9709-6026"
		contact.email = "contato@fantasticatecnologia.com.br"
		contact.twitter = "https://twitter.com/fantastica"
		contact.linkedin = "https://www.linkedin.com/company/a-fant-stica-f-brica-de-tecnologia"	
		
		contact.intro_title = 'Alta Tecnologia de uma forma Fantástica'
		contact.intro = 'A nossa missão é revolucionar o mundo com alta tecnologia de uma forma fantástica. Fazemos da tecnologia uma arte acessível às pessoas, de maneira a melhorar continuamente a vida delas e contribuir para um planeta mais próspero e interessante de se viver.'
		
		# servicos
		contact.services_title = 'Qual é a mágica?'
		contact.heart_title = 'Design thinking'
		contact.heart = 'Utilizamos o consolidado jeito de pensar dos designers em nossas soluções trazendo o foco para o maior benefício das pessoas envolvidas.'
		contact.code_title = 'Soluções web'
		contact.code = 'Desenvolvemos as soluções necessárias para o seu dia-a-dia tornando a tecnologia uma vantagem competitiva para seu negócio.'
		contact.world_title = 'Bootcamp'
		contact.world = 'Desmistificamos o dia-a-dia de um engenheiro de software no mundo real desenvolvendo o mindset de um novo resolvedor de problemas.'
		
		contact.team_title = 'Fantásticos'
		
		contact.quote = 'Todos nós somos todos mais inteligentes do que qualquer um de nós'
		contact.author_quote = 'Douglas Merrill'
		contact.save!
	end
end
