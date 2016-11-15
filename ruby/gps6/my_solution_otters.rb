# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Allows us to load a file that has data that is relative to the file that we are working on. 
#
require_relative 'state_data_otters'

class VirusPredictor

  ### Defines default values of an instance of VirusPredictor class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  ### Calls both the predicted deaths and speed_of_spread methods at once.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

  ### predicts number of deaths based on population density.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  ### Calculates speed of spread per each state based on its population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do | state, state_info |
  prediction = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  prediction.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The key is using the rocket syntax, whereas the value that contains the second hash uses the symbol syntax.
# from my research, it appears that symbols are more efficient syntax and memory-wise, but you can't change the value of a 
# symbol like you can a string. strings could be identical but they represent two objects, whereas two symbols that are the same are 
# the same in memory and function as one. For this assignment it appears to be only cosmetic and to help the user visualize. 

# What does require_relative do? How is it different from require?
# Require_relative calls a file that is contained in the same directory, require by itself is used to call external library of code.
# state_data is a local file that can be relatively linked. If we called require on state_data it wouldn't work without
# the absolute file path.

# What are some ways to iterate through a hash?
# as seen above, you can perform an " .each do " iteration where you provide a key and value parameter, and then upon initializing 
# a new instance, you add in the key and value pair that you want to be accessed (in this case, the key and value, which was another
# hash, so we had to specify which parts we wanted)
# you can also do .each_pair which returns the key value pair (but in a random order).  

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The arguments were @population and @state and such, but we realized that none of that was needed, and that you mearly needed to 
# call the two methods without parameters (and delete the parameters on the actual methods themselves), because we already made 
# the instance variables available in our initialize method! 


# What concept did you most solidify in this challenge?
# this challenge solidified the scope of instance variables a little better for me and also improved my knowledge of hashes and 
# iteration of nested data structures. 