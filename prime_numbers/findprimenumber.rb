def find_prime_number(seconds)
  # create a var and hold state of the current time in order to compare it up against the seconds passed in as an argument for the loop
  original_time = Time.now
  # create a var to hold state of the largest prime number found. start at 2 as it is the lowest prime number
  # largest_prime_number_found only gets updated when a larger prime number is found than the one preceding it and is only returned once the while loop has completed running
  largest_prime_number_found = 2

  # create another var to check if number is prime. updates on every iteration of loop while timer is checked on.
  current_number = 2
  # while loop that checks if there are more seconds that were passed as an argument vs. remaining time. If less, loop continues to run
  puts "...cycling through prime numbers..."
  while Time.now - original_time < seconds
  	# create a var to hold boolean and flips to false if number being checked on is NOT prime.
    is_prime = true

    # check on all numbers between (but not including) 2 and the current number
    # if none divide the current_number evenly then it's a prime number
    (2..current_number - 1).each do |i|
      if current_number % i == 0
        is_prime = false
      end
    end

    # if is_prime is true then set largest_prime_number_found to the current_number var
    # as that becomes the current largest prime number and will be until the loop ends
    if is_prime
      largest_prime_number_found = current_number
      puts "The current largest prime number is #{largest_prime_number_found}"
      puts "____________________________________"
    end
    #increase current_number by 1 to check next number in the loop
    current_number += 1 
  end

  # print the largest prime number after while loop is complete
  puts "The largest prime number found over #{seconds} seconds is: #{largest_prime_number_found}"
  return nil
end


# Prompt for testing
loop do
  print "Find the largest prime number over any number of seconds. How many seconds would like to run this function for? "
  input = gets.chomp

  begin
    # convert command line entry to Integer to pass into method
    sec = Integer(input)
    find_prime_number(sec)
    break
    # This will raise an error if input cannot be converted to a valid integer for the method
    # example: "hello" is entered instead of 5, prompt will fire up again.
  rescue ArgumentError
    puts "Invalid. Please enter a number."
  end
end
