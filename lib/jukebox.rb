songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# Help Method
# This method should puts out the following:
  # I accept the following commands:
  # - help : displays this help message
  # - list : displays a list of songs you can play
  # - play : lets you choose a song to play
  # - exit : exits this program
  
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

# List Method
# This method takes in an argument of the songs array of puts out the following:

  # 1. Phoenix - 1901
  # 2. Tokyo Police Club - Wait Up
  # 3. Sufjan Stevens - Too Much
  # 4. The Naked and the Famous - Young Blood
  # 5. (Far From) Home - Tiga
  # 6. The Cults - Abducted
  # 7. Phoenix - Consolation Prizes
  # 8. Harry Chapin - Cats in the Cradle
  # 9. Amos Lee - Keep It Loose, Keep It Tight

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


# Play Method
# This method takes in an argument of the songs array
# It first puts out the prompt: "Please enter a song name or number:"
# It then stores the user's response using gets.strip
# If the user's response is a valid song number or song name, the method should puts out: "Playing <song name>"
# Otherwise, it should puts out: "Invalid input, please try again"

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  display = " "
  songs.each_with_index do |song, index|
    if user_input == (index + 1).to_s || user_input == song
      display = "Playing #{song}"
    end
  end
  if display.include?("Playing")
    puts display
  else
    puts "Invalid input, please try again"
  end
end

# exit_jukebox method
# puts out: "Goodbye".

def exit_jukebox
  puts "Goodbye."
end

# Run Method
# First, puts out the prompt: "Please enter a command:". 
# Just like play, we will need to capture user input using gets and strip 
# Second, call one of the four methods we've written, based on the user input. 
# Use a loop to run the program until the user chooses "exit"


def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  while user_input != "exit"
    if user_input == "list"
      list(songs)
    elsif user_input == "help"
      help
    elsif user_input == "play"
      play(songs)  
    end
     break
  end
  if user_input == "exit"
    exit_jukebox
  end
end