# Add your code here

def help
  help_messages.each {|message| puts message}
end

def help_messages
  [
    "I accept the following commands:",
    "- help : displays this help message",
    "- list : displays a list of songs you can play",
    "- play : lets you choose a song to play",
    "- exit : exits this program"
    ]
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  if invalid_input?(songs, input)
    puts "Invalid input, please try again"
    return
  end
  
  puts "Phoenix - 1901"
end

def is_integer?(input)
  Integer(input) rescue false
end

def out_of_range?(array, index)
  (index < 0 || index >= array.length) ? true : false
end

def invalid_input?(songs, input)
  if is_integer?(input) && out_of_range(songs, Integer(input) - 1)
    return true
  end
end