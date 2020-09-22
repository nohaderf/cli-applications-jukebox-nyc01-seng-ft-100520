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
# First, run should puts out the prompt: "Please enter a command:". Just like play, we will need to capture user input using gets and strip (you can also use chomp, but this will only remove carriage return characters, not extra whitespaces).

# Second, the run method will need to call one of the four methods we've written, based on the user input. For example, if the input is "exit", we would want to call the exit_jukebox method.

# Now here is the tricky part. We've provided a way for a user to exit the program because ideally, we actually want the program to run until the user decides to exit. We need a way to keep our program running as long as the user's input is not "exit". For this, we can use a loop!

# A loop can be used to contain the process of capturing user input then deciding what to do with it. If this is contained within a loop, as long as the loop conditions are met, the user will be able to enter commands over and over.

# Use if or case statements to determine how your program will respond to a user's input. For example, if their input is "list", call the list method if their input is "play", call the play method if their input is "help", call the help method and if their input is "exit", call the exit_jukebox method and break out of your loop to stop the program.

