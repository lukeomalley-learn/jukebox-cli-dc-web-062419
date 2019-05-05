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
  puts'I accept the following commands:'
  puts'- help : displays this help message'
  puts'- list : displays a list of songs you can play'
  puts'- play : lets you choose a song to play'
  puts'- exit : exits this program'
end

def list(songs)
  songs.each_with_index do |i, song|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts'Please enter a song name or number:'
  input = gets.chomp
  songs.each_with_index do |i, song|
    if input == (i + 1) || song
      puts "Playing #{song}"
    else
      puts"Invalid input, please try again"
      play(songs)
    end
  end
end

def exit_jukebox
  puts "Goodbye"
  exit
end

def run
  help
  puts 'Please enter a command:'
  input = gets.chomp
  case input
  when 'play'
    play(songs)
  when 'help'
    help
  when 'list'
    list(songs)
  when 'exit'
    exit_jukebox
  else
    puts 'Please enter a valid command. For a list of valid commands enter help'
  end
end
        
run
      
  
  
  
  
  
  
  
  