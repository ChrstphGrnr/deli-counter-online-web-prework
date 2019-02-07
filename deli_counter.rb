katz_deli = []


def line(katz_deli) 
  if katz_deli.length > 0 
    current_line = "The line is currently:"
    katz_deli.map.with_index { |x, i| current_line << " #{i+1}. #{x}"}
    puts current_line
  else
     puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, new_customer)
  katz_deli.push(new_customer)
  last_in_line_number = katz_deli.index(new_customer)+1
  last_in_line_name = katz_deli.last
  puts "Welcome, #{last_in_line_name}. You are number #{last_in_line_number} in line."
end

def now_serving(katz_deli)
  if katz_deli.length > 0 
    puts "Currently serving #{katz_deli.shift}."
  else
    puts "There is nobody waiting to be served!"
  end
end

line = []
take_a_number(line, 'Bob')
take_a_number(line, 'Sally')