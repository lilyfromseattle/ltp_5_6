def calculate(f,a,b)
	if f[0..2].downcase == "add" or f[0..2].downcase == "+"
		add(a,b)
	elsif f[0..2].downcase == "sub" or f[0..2].downcase == "-"
		subtract(a,b)
	elsif f[0..2].downcase == "mul"  or f[0..2].downcase == "-"
		multiply(a,b)
	elsif f[0..2].downcase == "div" or f[0..2].downcase == "-"
		divide(a,b)
	elsif f[0..2].downcase == "exp" or f[0..2].downcase == "-"
		exponent(a,b)
	elsif f[0..5].downcase == "square" or f[0..2].downcase == "-"
		squareroot(a)
	else
		puts "That's not a function!"
		exit(0)
	end
end

def add(a,b)
	a + b
end

def subtract(a,b)	
	a - b
end

def multiply(a,b)
	a * b
end

def divide(a,b)
	a / b
end

def exponent(a,b)
	a**b
end 

def squareroot(a)
	Math.sqrt(a)
end



puts "What kind of math would you like to do?"
input = gets.chomp

choice = "You want #{input}!"

if input[0..2].downcase == "add" or input == "+"
	puts choice
elsif input[0..2].downcase == "sub" or input == "-"
	puts choice
elsif input[0..2].downcase == "mul" or input == "*"
	puts choice
elsif input[0..2].downcase == "div" or input == "/"
	puts choice
elsif input[0..2].downcase == "exp"
	puts choice
elsif input[0..5].downcase == "square"
	puts choice
else
	puts "That's not a function!"
	exit(0)
end


def isalpha(str)
  !str.match(/[^A-Za-z]/)
end
puts "enter first number:"
num1 = gets.chomp

if num1 == nil
	num1 = 0
end

if isalpha(num1.gsub(".","").gsub(" ", ""))
	puts "That's not a number!"	
	exit(0)
else		
	num1 = num1.to_f
end

unless input[0..1] == "sq"
	puts "enter second number:"
	num2 = gets.chomp
	if num2 == nil
		num2 = 0
	end

	if isalpha(num2.gsub(".","").gsub(" ", ""))
		puts "That's not a number!"
		exit(0)
	else
		num2=num2.to_f
	
	end
end


answer = calculate(input, num1, num2)

if answer == answer.to_i
	answer = answer.to_i
end
puts "Wow, your answer is #{answer}."

for x in 1..10
	puts "Would you like to do something else to this number?"
	yorn = gets.chomp

	if yorn[0].downcase == "y"
		 puts "What kind of math?"
		math = gets.chomp

		choice = "You want #{math}!"

			if math[0..2].downcase == "add" or math == "+"
				puts choice
			elsif math[0..2].downcase == "sub" or math == "-"
				puts choice
			elsif math[0..2].downcase == "mul" or math == "*"
				puts choice
			elsif input[0..2].downcase == "div" or math == "/"
				puts choice
			elsif math[0..2].downcase == "exp"
				puts choice
			elsif math[0..5].downcase == "square"
				puts choice
			else
				puts "That's not a function!"
				exit(0)
			end

		
		puts "enter another number:"
		num3 = gets.chomp

			if num3 == nil
				num3 = 0
			end

			if isalpha(num3.gsub(".","").gsub(" ", ""))
				puts "That's not a number!"	
				exit(0)
			else		
				num3 = num3.to_f
			end

	 newanswer = calculate(math, answer, num3)

	 if newanswer == newanswer.to_i
		newanswer = newanswer.to_i
	end
	 answer = newanswer
	 puts "Wow, your answer is #{newanswer}."

	elsif yorn[0].downcase == "n"
		puts "Thanks for using the calculator!"
		exit(0)
	else
		puts "You need to answer yes or no!"
		exit(0)
	end
end
