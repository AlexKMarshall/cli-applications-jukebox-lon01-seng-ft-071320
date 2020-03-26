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

def play
end