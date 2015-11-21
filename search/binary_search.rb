=begin
Binary Search Algorithm with a random guess each time the
program is run.

Time Complexity:
  Worst case performance - O(log n)
  Best case performance - O(1)
  Average case performance - O(log n)
  Worst case space complexity - 0(1)
=end

def binary_search min, primes, max, guess, n
  count = 0
  puts 'you guessed right! It took 1 guess to find the prime! 'if guess == n 
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
    puts 'it took '"#{count}"' guesses to find the prime at index '"#{primes.index(guess)}"
  end
end
