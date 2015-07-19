=begin
Binary Search Algorithm with a random guess each time the
program is run.

Time Complexity:
  Worst case performance - O(log n)
  Best case performance - O(1)
  Average case performance - O(log n)
  Worst case space complexity - 0(1)
=end

min = 0
primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];
n = primes.sample
max = primes.length - 1
guess = primes.sample
puts 'selected prime is ' + n.to_s
puts 'the first guess is ' + guess.to_s

def binary_search min, primes, max, guess, n
  count = 0
  if guess == n 
    puts 'you guessed right!'
    puts 'it took 1 guess to find the prime!'
  else
    until guess == n do
        if guess > n
          puts 'Lower'
          max = guess - 1
          p guess = (max + min) / 2
          count += 1
        elsif guess < n
          puts 'Higher'
          min = guess + 1
          p guess = (max + min) / 2
          count += 1
        else guess == n
          break
      end
    end
      puts 'it took ' + count.to_s + ' guesses to find the prime at index ' + primes.index(guess).to_s
  end
end

binary_search min, primes, max, guess, n