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
  
  song = find_song(songs, input)
  
  puts "Invalid input, please try again" if !song

  puts song
end

def find_song(songs, input)
  if is_integer?(input)
    songs[Integer(input) - 1]
  else
    songs.find {|song| song == input}
  end
end
