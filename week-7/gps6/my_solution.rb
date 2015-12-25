# Virus Predictor

# I worked on this challenge with Bob Dorff.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
# => Require relative means the program requires a separate file to run, in the case of require relative, the program will look in the directory relative to where the original ruby file is. With relative, the program will look through the load path.
#
require_relative 'state_data'

class VirusPredictor
  # sets the arguments to instance variables/defines how many arguments are required
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calls two methods defined further down
  def virus_effects
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed = 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed = 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed = 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed = 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed = 2.5
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================
# DRIVER CODE
# initialize VirusPredictor for each state

STATE_DATA.each do |state, pop|
  #state is the key from state_data hash
  VirusPredictor.new(state, pop[:population_density], pop[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The nested hash uses symbols as keys, and the benefits of that is that it allows us to replace the rocket ship with a simple colon, in addition to running faster.
# What does require_relative do? How is it different from require?
# Require_relative runs a file from the path relative to where the file being executed resides in. Require starts looking in the root directory where Ruby is installed, unless a specific directory is listed.
# What are some ways to iterate through a hash?
# In this challenge, we iterated by running each on the hash.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The instance variables were accessible directly from the methods, so there was no need to set arguments for them and enter them separately.
# What concept did you most solidify in this challenge?
# Requiring a file, and then iterating it by initializing an instance for each separate element.