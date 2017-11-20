# Ruby vs Javascript :
=begin Create a simple terminal app in Ruby with Specs, which takes a person's first name and last name and returns a Person object. This persn class has 'Greet' method that logs a nice greeting.


2. create the same application in chrome Javascript consol.e

3. install NODE, nvm and create the same application as a Node App.

5. Bonus POIINTS: For your node app, include tests (Jest or mocha);
=end


# Ruby

class Person


	def initialize
		@first = first
		@last = last
	end

	attr_accessor :first, :last


	def greet
		puts "Whats your first name?"
		@first = gets.chomp
		puts "Whats your last name?"
		@last = gets.chomp
		puts "Hello #{@first} #{@last} you look great!"
	end

end



player = Person.new
player.greet
