require_relative "data_crypto"

def number_of_cryptos
  puts "Number of cryptos: #{crypto_names.size}"    
end
  
def cryptos_by_values
  puts "Most expensive crypto: #{crypto_hash.max_by {|_, price| price}.first} is #{crypto_hash.max_by {|_, price| price}.last}" #
  puts "Cheapest crypto: #{crypto_hash.min_by {|_, price| price}.first} is #{crypto_hash.min_by {|_, price| price}.last}"
  #puts crypto_hash
end

def perform
  number_of_cryptos(CRYPTO_NAMES)
  cryptos_by_values(CRYPTO_DATA)
end

perform