puts "Hello, How old are you?"

age = gets.chomp

if age.to_i < 18
  puts "Sorry, you are not enough to vote yet!"
else 
  puts "Yes, you are old enough to vote!"
end


