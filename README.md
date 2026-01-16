# Data Scientist Library - Ruby Exercises

A collection of Ruby exercises focused on data analysis and manipulation techniques. This project demonstrates fundamental programming concepts applied to real-world datasets, including Twitter handles analysis and cryptocurrency market data.

## Project Overview

This project is part of the **The Hacking Project (THP)** curriculum (Course 3) and is **fully completed** according to course assignments. It provides hands-on experience with:
- Array manipulation and iteration
- Hash data structures
- String processing and pattern matching
- Data filtering and sorting
- Statistical analysis

**Status:** Complete and fully functional

## Project Structure

### `00_journalists.rb`
Analysis of Twitter handles from French journalists and media personalities.

**Key Features:**
- Count total handles in dataset
- Find shortest handle
- Filter handles by character length (5 characters)
- Identify handles starting with capital letters
- Sort handles alphabetically and by length
- Search for specific handles
- Group handles by length distribution

**Sample Operations:**
- Processes 636 journalist Twitter handles
- Uses regex pattern matching for character validation
- Implements hash-based grouping and sorting

### `01_cryptocurrencies.rb`
Market analysis of cryptocurrency prices and valuations.

**Key Features:**
- Track cryptocurrency names and prices
- Calculate cryptocurrency count
- Identify most and least expensive cryptocurrencies
- Hash-based price lookups using `.zip()` method

**Sample Data:**
- 1000+ cryptocurrency entries
- Real market price data
- Demonstrates floating-point number handling

## Technologies & Concepts

**Language:** Ruby 2.5+

**Core Concepts Demonstrated:**
- **Collections:** Arrays, Hashes, and their methods
- **Iteration:** `.each`, `.map`, `.sort_by`, `.max_by`, `.min_by`
- **String Methods:** `.length`, string slicing `[1..]`, range operations
- **Regular Expressions:** Pattern matching with `=~` operator
- **Data Transformation:** `.zip()`, `.to_h`, `.sort()`
- **Functional Methods:** Blocks and lambda-style operations

## How to Run

### Prerequisites
- Ruby 2.5 or higher installed
- No external dependencies required

### Execution

Run individual files:
```bash
ruby 00_journalists.rb
ruby 01_cryptocurrencies.rb
```

Run both:
```bash
ruby 00_journalists.rb && ruby 01_cryptocurrencies.rb
```

## Expected Output Examples

### Journalists Analysis
```
This array have : 636 handles
Shortest handle is @min
There are X handles with 5 characters (without @)
There are Y handles starting with a capital letter
```

### Cryptocurrency Analysis
```
Number of cryptos: 1000+
Most expensive crypto: [Name] is [Price]
Cheapest crypto: [Name] is [Price]
```

## Learning Outcomes

After completing these exercises, you'll understand:
- How to manipulate and analyze large datasets efficiently
- Ruby best practices for data processing
- How to use built-in methods effectively
- Problem-solving approaches for data analysis tasks

## Code Highlights

**Pattern Matching Example:**
```ruby
if first_char =~ /[A-Z]/  # Check if capital letter
  count += 1
end
```

**Hash Creation:**
```ruby
crypto_hash = crypto_names.zip(crypto_prices.map(&:to_f)).to_h
```

**Sorting with Blocks:**
```ruby
sorted = handles.sort_by {|handle| handle[1..]}
```

## Future Enhancements

A menu-driven interface is planned for future versions that will allow users to:
- Select which analysis operations to run from the 00_journalists.rb module
- Choose which cryptocurrency queries to execute from the 01_cryptocurrencies.rb module
- Interactive prompt system to guide users through available options
- Dynamic output based on user selections

## Author
Developed as part of The Hacking Project curriculum

## Resources
- [Ruby Documentation](https://ruby-doc.org/)
- [The Hacking Project](https://www.thehackingproject.org/)
- Ruby Array Methods
- Ruby Hash Methods
