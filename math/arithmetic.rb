#Arithmetic methods

require 'prime'

def prime_generator
  x, i, primes = rand(1000), 0, []
  while i < x
    primes[i] = i if i.prime?
    i += 1
  end
  primes.compact
end

def gcd a, b
  if b == 0 then a
  else gcd(b, a % b)
  end
end

def coprime? a, b
  1 == gcd(a, b)
end

def eulers_totient n
  prime_count, a = 0, 1
  while a <= n do
    prime_count += 1 if gcd(n , a) == 1
    a += 1
  end
  prime_count
end

def extended_euclid a, b
  return [0, 1] if a % b == 0
  x, y = extended_euclid(b, a % b)
  [y, x - y * (a / b)]
end
