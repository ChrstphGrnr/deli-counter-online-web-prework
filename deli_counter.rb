require 'pry'

#global variable
$something = 'Hello'

$deli_counter = 0 
$deli_last_in_line = 0 
$serving_counter = 0


#def line(katz_deli) 
#  if $deli_counter > 0 
#    current_line = "The line is currently:"
#    katz_deli.map.with_index { |x, i| current_line << " #{i+1}. #{x}"}
#    puts current_line
#  else
#     puts "The line is currently empty."
#  end
#end

def take_a_number(katz_deli)
  # katz_deli is now an array of ticket numbers, not names
  $deli_counter += 1 
  $deli_last_in_line += 1 
  
  puts "#{$something}, you are ticket number #{$deli_last_in_line}. You are number #{$deli_counter} in line."

end

def now_serving(katz_deli)
  if $serving_counter > 0  
    puts "Currently serving #{$serving_counter}."
    $deli_counter += 1 
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