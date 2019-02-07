require 'pry'
katz_deli = []
$something = 'hello'


def line(katz_deli) 
  if katz_deli.length > 0 
    current_line = "The line is currently:"
    katz_deli.map.with_index { |x, i| current_line << " #{i+1}. #{x}"}
    puts current_line
  else
     puts "The line is currently empty."
  end
end

def take_a_number(katz_deli)
  # katz_deli is now an array of ticket numbers, not names
  katz_deli << katz_deli.length+1
#  binding.pry
  number_in_line = katz_deli.last
  ticket_number = katz_deli.last
  puts "Welcome, you are ticket number #{number_in_line}. You are number #{ticket_number} in line."
end

def now_serving(katz_deli)
  if katz_deli.length > 0 
    puts "Currently serving #{katz_deli.shift}."
  else
    puts "There is nobody waiting to be served!"
  end
end

line = []
take_a_number(line)
# Welcome, you are ticket number 1. You are number 1 in line.
take_a_number(line)
# Welcome, you are ticket number 2. You are number 2 in line.
now_serving(line)
now_serving(line)
take_a_number(line)