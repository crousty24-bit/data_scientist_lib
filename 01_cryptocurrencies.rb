require_relative "data_crypto"

def total_of_cryptos(crypto_names)
  puts "Number of cryptos: #{crypto_names.size}"    
end
  
def cryptos_by_values(crypto_data)
  puts "Most expensive crypto: #{crypto_data.max_by {|_, price| price}.first} is #{crypto_data.max_by {|_, price| price}.last}"
  puts "Cheapest crypto: #{crypto_data.min_by {|_, price| price}.first} is #{crypto_data.min_by {|_, price| price}.last}"
end

def cryptos_bellow_6k(crypto_data)
  count = 0
  crypto_data_updated = []
  crypto_data.each do |i| #i is [names, prices]
    if i[1] < 6000.00 #compare prices
      crypto_data_updated<< i #add in array
      count +=1
    end
  end
  crypto_data_updated.sort_by! { |_, price| -price }
  crypto_data_updated = crypto_data_updated.take(30)
  puts "There is #{count} cryptos currencies bellow 6K"
  puts "This is the list :"
  crypto_data_updated.each do |name, price|
    puts "#{name} : #{price}"
  end
  most_expensive = crypto_data_updated.max_by {|_, price| price} #find most expensive w/ max_by
  puts "The most expensive crypto bellow 6K is : #{most_expensive[0]} : #{most_expensive[1]}" #show index 0 name & index 1 price
end

def perform
  total_of_cryptos(CRYPTO_NAMES)
  cryptos_by_values(CRYPTO_DATA)
  cryptos_bellow_6k(CRYPTO_DATA)
end

perform