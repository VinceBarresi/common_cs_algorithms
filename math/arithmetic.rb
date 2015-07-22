#Arithmetic methods

def prime_generator
  x, i = rand(1000), 0
  primes = []
  while i < x
    if i % 2 == 0
      is_prime = false
    else
      is_prime = true
      primes[i] = i
    end
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
    if gcd(n , a) == 1
      prime_count += 1 
    end      
    a += 1
  end
  prime_count
end

def extended_euclid a, b
  if a % b == 0
    return [0, 1]
  end
  x, y = extended_euclid(b, a % b)
  [y, x - y * (a / b)]
end
