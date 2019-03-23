#def say_hello(name)
#  puts "Hi #{name}!"
#end

#puts "Enter your name:"
#user_name = gets.chomp

#puts say_hello(user_name)

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

def help
  puts
  "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

help

def list(array)
  array.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

list(songs)

def play(array)
  puts "Please enter a song name or number:"
  selected_song = gets.chomp
  if (1..9).to_a.include?(selected_song)
    puts "Playing #{array[selected_song-1]}"
  elsif array.include?(selected_song)
    puts "Playing #{selected_song}"
  else
    puts "Invalid input, please try again"
  end
end

play(songs)

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ""
  while command
  puts "Please enter a command:"
  command = gets.downcase.strip
  case command
    when 'list'
      list(songs)
      when 'play'
        list(songs)
        play(songs)
      when 'help'
        help
      when 'exit'
        exit_jukebox
        break
      else
        help
      end
    end
  end

run(songs)
