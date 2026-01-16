require_relative "data_crypto"

def total_of_cryptos(crypto_names)
  puts "Number of cryptos: #{crypto_names.size}"    
end
  
def cryptos_by_values(crypto_data)
  puts "Most expensive crypto: #{crypto_data.max_by {|_, price| price}.first} is #{crypto_data.max_by {|_, price| price}.last}"
  puts "Cheapest crypto: #{crypto_data.min_by {|_, price| price}.first} is #{crypto_data.min_by {|_, price| price}.last}"
end

def perform
  total_of_cryptos(CRYPTO_NAMES)
  cryptos_by_values(CRYPTO_DATA)
end

perform