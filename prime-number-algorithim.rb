=begin 2. Prime number algorithm
To create an algorithm that finds prime numbers, you have to decide if the number in question can only be divided by itself and 1. To do that, you have to check if the number can be divided by itself and each number below it, down to 1.
The process in Ruby is to check whether each number is divisible by these integers, and if it is, then Ruby designates it as a prime number.
=end

def prime?(number)
  return false if number <= 1
  (2..Math.sqrt(number)).each do |i|
    return false if number % i == 0
  end
  true
end


(1..20).each do |num|
  if prime?(num)
    puts "#{num} is a prime number."
  else
    puts "#{num} is not a prime number."
  end
end
