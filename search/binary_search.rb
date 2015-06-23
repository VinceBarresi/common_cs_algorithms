=begin
Binary Search Algorithm with random a random guess each time the
program is run.
=end

min = 0
primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];
n = primes.sample #random element from array
max = n
guess = (max + min) / 2
puts "selected prime is " + n.to_s

def binary_search min, primes, max, guess, n
  count = 0
  if guess == n 
    puts "you guessed right!"
    puts "it took you 1 guess to find the prime!"
  else
    until guess == n do
      if guess > n
        puts "Lower"
        p guess = (max + min) / 2
        max = guess - 1
        count += 1
      else
        puts "Higher"
        p guess = (max + min) / 2
        min = guess + 1
        count += 1
      end
      if guess == n
        break
      end
    end
      puts "it took you " + count.to_s + " guesses to find the prime!"
  end
end

binary_search min, primes, max, guess, n