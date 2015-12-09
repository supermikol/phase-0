# Cipher Challenge

# I worked on this challenge by myself
# I spent 3.5 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # turns coded_message into an array of lower case letters and assigns it to input
#   decoded_sentence = []
#   cipher = {"e" => "a",
#             "f" => "b",   # Pretty sure hashes aren't meant to be used like this.
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # each is iterating through every element of the array 'input'. Basically iterating through each letter of the encoded message.
#     found_match = false  #found_match is completely
#     cipher.each_key do |y| # iterating through the keys of the cipher hash.
#       if x == y  # if the letter of the encoded message matches the key of the cipher, find the value of the cipher associated with the key.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # break so that it stops iterating through the rest of the cipher hash
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #if the letter of the encoded message doesn't match a letter in the cipher, then check to see if it's one of these strange symbols. If so, replace it with an empty space.
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # create an array with the values 0 to 9, and check to see if x is a part of it. Basically is 'x' a number? If so, retain x.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # if still false (x doesn't match any of the conditions), then just keep x the way it is.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #Converts the new array with the decrypted code back into a string, and returns it.
# end

# Your Refactored Solution

def shift(char, shift_spaces)
  return (char.ord+shift_spaces).chr
end

def dr_evils_cipher(coded_message)
  new_string=""
  for i in 0..coded_message.length-1 do # i refers to index in string
    if ["@", "#", "$", "%", "^", "&", "*"].include?(coded_message[i])
      new_string[i] = " "
    elsif ["a", "b", "c", "d"].include?(coded_message[i])
      new_string[i] = shift(coded_message[i],22)
    elsif coded_message[i].ord > 100 && coded_message[i].ord < 123
      new_string[i] = shift(coded_message[i],-4)
    else
      new_string[i] = coded_message[i]
    end
  end
  return new_string
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!")
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")



# Create a Playlist from Driver Code

# Initial Solution
class Song
  attr_reader :song_name, :artist
  def initialize(song_name, artist)
    @song_name = song_name
    @artist = artist
  end
  def play
    puts "Now playing: #{@song_name}, by #{@artist}"
    sleep(1)
  end
end

class Playlist
  attr_reader :playlist
  def initialize(*song)
    @playlist = []
    @playlist.concat(song)
  end
  def add(*song)
    @playlist.concat(song)
  end
  def num_of_tracks
    @playlist.length
  end
  def remove(song)
    @playlist.delete(song)
  end
  def includes?(song)
    return @playlist.include?(song)
  end
  def play_all
    for i in 0..@playlist.length-1
      @playlist[i].play
    end
  end
  def display
    puts "Playlist:"
    for i in 0..@playlist.length-1
      puts "#{i+1}. #{@playlist[i].song_name}"
      puts "Artist: #{@playlist[i].artist}"
    end
  end
end


# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

# Reflection
# What concepts did you review or learn in this challenge?
# I learned to play with the ascii coding (ord), to shift letters without setting up a 'cipher'. Also got to iterate through a string, which I never got to do before.
# What is still confusing to you about Ruby?
# I still haven't had the chance to use enumerators enough to feel confident with it.
# What are you going to study to get more prepared for Phase 1?
# Everything. In order of decreasing confidence: Ruby, Javascript, SQL, CSS. Basically, I'm feeling good with Ruby, just not everything else...
# Keep your reflection limited to 10-15 minutes!