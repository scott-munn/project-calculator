#!/usr/bin/env ruby

# This function will great the user and ask for the input of their name.

def greeting
  puts "Hello!  Please type your name: "
  name = gets
  puts "It is nice to meet you #{name}.  I am a simple calculator application.  \n
  I can add, subtract, multiply, and divide.\n"
  name
end

# This function will ask the user to input what type of calculation they would like to do

def request_calculation_type
  puts "Type 1 to add, 2 to subtract, 3 to multiply, or 4 to divide two numbers: "
  operation_selection = gets.to_i

  if operation_selection == 1
    "add"
  elsif operation_selection == 2
    "subtract"
  elsif operation_selection == 3
    "multiply"
  elsif operation_selection == 4
    "divide"
  else
    "error"
  end

end

# This function performs the calculation that the user requested

def calculate_answer(operator, a, b)
  if operator == "add"
    a + b
  elsif operator == "subtract"
    a - b
  elsif operator == "multiply"
    a * b
  elsif operator == "divide"
    a / b
  end
end

name = greeting
run_calculator = 1

while run_calculator == 1

  current_calculation = request_calculation_type()

  if current_calculation == "error"

    puts "I do not understand this type of calculation... Can we try again?"

  else
    puts "What is the first number you would you like to #{current_calculation}: "
    first_number = gets.to_i
    puts "What is the second number you would like to #{current_calculation}: "
    second_number = gets.to_i

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "The answer is #{answer}"
    puts "Type 1 to run another calcution or 2 to end: "
    run_calculator = gets.to_i

  end
end