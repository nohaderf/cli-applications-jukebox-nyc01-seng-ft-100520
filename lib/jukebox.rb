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

# THE HELP METHOD
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

# THE LIST METHOD
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

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
    if user_input == songs.any? || songs[gets.strip]
      puts "Playing #{user_input}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye."
end

