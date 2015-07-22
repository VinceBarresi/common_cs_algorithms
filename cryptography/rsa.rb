=begin
  Rivest Shamir Adelman (RSA) Algorithm

  This solution generates m as a random number 
  between 0 and 1000. It then encrypts and decrypts m.
=end

require_relative '../math/arithmetic'

def encrypt m, e, n
  m**e % totient
end

def decrypt c, d, n
  c**d % totient
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
  puts 'p is ' + p.to_s + ' and q is ' + q.to_s + ' so p*q = n = ' + n.to_s
  totient = (p - 1) * (q - 1)
  until e > 1 && e < totient && gcd(e, totient) == 1 #&& (totient - e) < 50
    e = prime_generator.sample
  end
  puts 'e is ' + e.to_s
  d = gen_d e, totient
  puts 'd is ' + d.to_s 
  c = encrypted = public_key = m**e % totient
  decrypted = private_key = c**d % totient
  puts 'm = ' + m.to_s
  puts 'encrypting m...encrypted m = ' + encrypted.to_s
  puts 'decrypting m...decrypted m = ' + decrypted.to_s
end

rsa rand(1000)
