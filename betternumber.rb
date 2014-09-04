def better_number()
    puts "What is your favorite number?"
    fave = gets.chomp
	newfave = fave.to_i + 1
	puts "#{newfave} is a better number! Like #{newfave} instead!"
end
better_number