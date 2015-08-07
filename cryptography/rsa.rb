=begin
  Rivest Shamir Aldeman (RSA) Algorithm

  This solution generates m as a random number 
  between 0 and 1000. It then encrypts and decrypts m.
=end

require_relative '../math/arithmetic'

def encrypt m, e, n
  m**e % n
end

def decrypt c, d, n
  c**d % n
end

def gen_e n
  e = 0
  until e > 1 && e < totient && gcd(e, totient) == 1
    e = prime_generator.sample
  end
end

def gen_d e, phi
  x, y = extended_euclid(e, phi)
  if x < 0
    x += phi
  end 
  x 
end

def rsa m
  p = prime_generator.sample
  q = prime_generator.sample
  n, e = (p * q), 0
  puts 'p is ' + "#{p}" + ' and q is ' + "#{q}" + ' so p*q = n = ' + "#{n}"
  totient = (p - 1) * (q - 1)
  until e > 1 && e < totient && gcd(e, totient) == 1
    e = prime_generator.sample
  end
  puts 'e is '"#{e}"
  d = gen_d e, totient
  puts 'd is '"#{d}" 
  c = encrypted = public_key = m**e % totient
  puts 'c is '"#{c}"
  decrypted = private_key = c**d % totient
  puts 'm = ' + "#{m}"
  puts 'encrypting m...encrypted m = '"#{encrypted}"
  puts 'decrypting m...decrypted m = '"#{decrypted}"
end

rsa rand(1000)
