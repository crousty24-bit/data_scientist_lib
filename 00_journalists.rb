require_relative "data_handles"
#import const array from other file
#resolves path relative to the calling file ; no need to add ./ or ../

def total_handles(handles) #set local parameter : array handle_twitter is put inside handles; method use handles as an array
  puts "This array have : #{handles.length} handles"
end

def shortest_handle(handles)
  first_handle = handles[0]
  handles.each do |i| #iterate each element of array
    string = i[1..] #class range from index start to end of the str (endless range)
    if string.length < first_handle[1..].length #comparison of str and first_handle without @
      first_handle = i #update first_handle with i (original) this is shortest handle
    end
  end
  puts "Shortest handle is #{first_handle}"
end

def count_handles(handles)
  count = 0
  handles.each do |i|
    string = i[1..] #class range from index start to end of the str (endless range)
    length = string.length #evaluate length
    if length == 5 #condition we want only 5 char str
      count +=1
    end
  end
  puts "There are #{count} handles with 5 characters (without @)"
end

def count_capital(handles)
  count = 0
  handles.each do |i|
    first_char = i[1] #starts at index 1
    if first_char =~ /[A-Z]/ #stricly checks if capital letter, using "pattern/regex match operator"
      count +=1
    end
  end
  puts "There are #{count} handles starting with a capital letter"
end

def sorted_handles(handles)
  sorted = handles.sort_by {|handle| handle[1..]}
  puts "Here is the list of handles by alphabetical order :"
  sorted.each { |handle| puts handle}
  #puts "#{sorted}"
end

def sorted_size(handles)
  size = handles.sort_by {|handle| handle[1..].length}
  puts "Here is the list of handles by size order (smaller to biggest) :"
  size.each { |handle| puts handle}
end

def find_handle (handles)
  position = handles.index("@epenser") #method .index to check if (value)
  if position #if True
    puts "-----------------------------------"
    puts "@epenser is at position #{position} in array"
  else
    puts "-----------------------------------"
    puts "@epenser is not found"
  end
end

def group_handle_by_length(handles)
  number_of_handles = {} #hash var
  handles.each do |i|
    handle = i[1..].length
    if number_of_handles[handle] #access handle 
      number_of_handles[handle] += 1 #add to hash if handle length already exists in it
    else
      number_of_handles[handle] = 1 #create a new key if doesnt exists
    end
  end
  puts "-------------------------------------------------"
  puts "There are :"
  number_of_handles.sort.each do |length, count| #.sort by default in ascending order 
    puts "#{count} handles with #{length} characters length"
  end 
  #puts number_of_handles
end

def perform
  total_handles(HANDLE_TWITTER) #then method is giving acces to array
  shortest_handle(HANDLE_TWITTER)
  count_handles(HANDLE_TWITTER)
  count_capital(HANDLE_TWITTER)
  sorted_handles(HANDLE_TWITTER)
  sorted_size(HANDLE_TWITTER)
  find_handle(HANDLE_TWITTER)
  group_handle_by_length(HANDLE_TWITTER)
end

perform