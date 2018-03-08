# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Subject.destroy_all
Resource.destroy_all
SubjectResource.destroy_all
User.destroy_all
Comment.destroy_all

subjects = Subject.create([
	{name: "HTML", icon: "html.png", description: "Standard markup language for creating web pages and web applications"},
	{name: "CSS", icon: "css.png", description: "Style sheet language used for describing the presentation of a document written in a markup language"}, 
	{name: "Bootstrap", icon: "bootstrap.png", description: "Open-source Javascript framework developed at Twitter. A combination of HTML, CSS, and Javascript code designed to help build user interface components"},
	{name: "Ruby", icon: "ruby.png", description: "Dynamic, object-oriented, general-purpose programming language. Designed and developed in the mid-1990s by Yukihiro 'Matz' Matsumoto in Japan"},
	{name: "Rails", icon: "rails.png", description: "Server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller (MVC) framework"},
	{name: "SQL", icon: "sql.png", description: "Structured Query Language, a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS)"},
	{name: "Javascript", icon: "js.png", description:  "High-level, interpreted programming language used to make webpages interactive, one of the three core technologies of web content engineering alongside HTML and CSS"},
	{name: "jQuery", icon: "jquery.png", description: "Open source ross-platform JavaScript library designed to simplify the client-side scripting of HTML"},
	{name: "GitHub", icon: "github.png", description: "Web-based hosting service offering distributed version control and source code management using Git"},
	{name: "MVC", icon: "mvc.png", description: "Model View Controller, an architectural pattern dividing applications into three interconnected parts to separate data from the way it is presented to the user"},
	{name: "RubyGems", icon: "gems.png", description: "Package manager for Ruby providing a standard format for distributing, installing and managing Ruby libraries (gems)"},
	{name: "APIs", icon: "api.png", description: "Application Programming Interface, a set of clearly defined methods of communication between software components used to build application software"}
	])

Subject.all.each do |s|
	12.times do
		puts "In Resource Loop"
		r = Resource.create!(
			name: Faker::Lorem.word,
			url: Faker::Internet.url,
			description: Faker::Lorem.sentence,
			rank: Faker::Number.between(1,20),
			comment_ids: []
			)
		# r.save
		sr = SubjectResource.create!(subject_id: s.id, resource_id: r.id)
		# sr.save
		5.times do
			puts "In Comment Loop"
			u = User.create!(
					email: Faker::Internet.email(Faker::Name.first_name),
					name: Faker::Name.name,
					role: "guest",
					comment_ids: []
				)
			# u.save
			c = Comment.create!(
				body: Faker::Lorem.paragraph,
				resource_id: r.id,
				up: 1,
				down: 0,
				user_id: u.id
				)
			# c.save
			u.comment_ids.push(c.id)
			r.comment_ids.push(c.id)
		end
	end
end
